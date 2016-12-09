package com.retailers.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.retailers.common.Base.BaseEntity;
import com.retailers.common.IdGen;
import org.hibernate.validator.constraints.NotBlank;

import java.util.List;

/**
 * Created by GC on 2016/12/08.
 */
public class ManageOffice extends BaseEntity {

    /**
     * 上级部门
     * */
    private  ManageOffice parent;
    /**
     * 部门名称
     * */
    @NotBlank(message = "部门名称不能为空！")
    private String officeName;
    /**
     * 上级部门
     * */
    private String pid;

    public ManageOffice getParent() {
        return parent;
    }

    public void setParent(ManageOffice parent) {
        this.parent = parent;
    }

    public String getOfficeName() {
        return officeName;
    }

    public void setOfficeName(String officeName) {
        this.officeName = officeName;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    @JsonIgnore
    public  static  void  sortList(List<ManageOffice> list, List<ManageOffice> sourcelist , String paerenId, boolean cascade){
        for (int i=0;i<sourcelist.size();i++){
            ManageOffice e=sourcelist.get(i);
            if(e.getParent()!=null&&e.getParent().getId()!=null&&e.getParent().getId().equals(paerenId)){
                list.add(e);
                if (cascade){
                    for (int j=0;j<sourcelist.size();j++){
                        ManageOffice child=sourcelist.get(j);
                        if (child.getParent()!=null&&e.getParent().getId()!=null&&child.getParent().getId().equals(e.getId())){
                            sortList(list,sourcelist,e.getId(),true);
                            break;
                        }
                    }
                }
            }
        }
    }

    public void  preInsert(){
        setId(IdGen.getuuid());
    }
}
