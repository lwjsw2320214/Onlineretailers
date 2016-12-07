package com.retailers.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.retailers.common.Base.BaseEntity;
import org.hibernate.validator.constraints.NotBlank;

import java.util.List;

/**
 * Created by GC on 2016/11/10.
 */
public class Menu extends BaseEntity {

    private  Menu parent;
    @NotBlank(message = "请填写菜单名称！")
    private String menuName;
    private String urlPath;
    private String ioc;
    private String pid;
    private String permission;
    private  Integer sort;
    private  String showFlag;

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getUrlPath() {
        return urlPath;
    }

    public void setUrlPath(String urlPath) {
        this.urlPath = urlPath;
    }

    public String getIoc() {
        return ioc;
    }

    public void setIoc(String ioc) {
        this.ioc = ioc;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public Integer getSort() {
        return sort==null?1:sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Menu getParent() {
        return parent;
    }

    public void setParent(Menu parent) {
        this.parent = parent;
    }

    public String getShowFlag() {
        return showFlag==null?"1":showFlag;
    }

    public void setShowFlag(String showFlag) {
        this.showFlag = showFlag;
    }


    @JsonIgnore
    public  static  void  sortList(List<Menu> list,List<Menu> sourcelist ,String paerenId,boolean cascade){
        for (int i=0;i<sourcelist.size();i++){
            Menu e=sourcelist.get(i);
            if(e.getParent()!=null&&e.getParent().getId()!=null&&e.getParent().getId().equals(paerenId)){
                list.add(e);
                if (cascade){
                    for (int j=0;j<sourcelist.size();j++){
                        Menu child=sourcelist.get(j);
                        if (child.getParent()!=null&&e.getParent().getId()!=null&&child.getParent().getId().equals(e.getId())){
                            sortList(list,sourcelist,e.getId(),true);
                            break;
                        }
                    }
                }
            }
        }
    }
}
