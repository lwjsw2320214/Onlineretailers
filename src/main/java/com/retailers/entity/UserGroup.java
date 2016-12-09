package com.retailers.entity;

import com.retailers.common.Base.BaseEntity;
import com.retailers.common.IdGen;
import org.hibernate.validator.constraints.NotBlank;

/**
 * Created by GC on 2016/12/09.
 */
public class UserGroup  extends BaseEntity{

    @NotBlank(message = "请填写用户组名称！")
    private String  roleName;

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public void  preInsert(){
        setId(IdGen.getuuid());
    }
}
