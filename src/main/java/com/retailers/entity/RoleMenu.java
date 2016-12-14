package com.retailers.entity;

import com.retailers.common.Base.BaseEntity;
import com.retailers.common.IdGen;

/**
 * Created by GC on 2016/12/14.
 */
public class RoleMenu extends BaseEntity {

    private  String roleId;
    private  String menuId;

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getMenuId() {
        return menuId;
    }

    public void setMenuId(String menuId) {
        this.menuId = menuId;
    }

    public void  preInsert(){
        setId(IdGen.getuuid());
    }
}
