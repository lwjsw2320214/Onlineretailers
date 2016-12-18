package com.retailers.entity;

import com.retailers.common.Base.BaseEntity;
import com.retailers.common.IdGen;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * Created by GC on 2016/12/01.
 */
public class ManageLogin extends BaseEntity {

    @Length(max =18 ,min =4 ,message = "用户名必须为4到18位字符串")
    private  String loginName;
    private  String loginPassword;
    @NotBlank(message = "真实姓名不能为空！")
    private  String realRame;
    @NotBlank(message = "用户所在部门不能为空！")
    private  String officeId;
    private  String position;
    private  String email;
    private  String phone;
    private  String mobile;
    @NotBlank(message = "用户类型不能为空！")
    private  String userType;
    private  String loginFlag="0";
    private  ManageOffice office;  //用户所在部门
    private  UserGroup group;      //用户所在组

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public String getRealRame() {
        return realRame;
    }

    public void setRealRame(String realRame) {
        this.realRame = realRame;
    }

    public String getOfficeId() {
        return officeId;
    }

    public void setOfficeId(String officeId) {
        this.officeId = officeId;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getLoginFlag() {
        return loginFlag;
    }

    public void setLoginFlag(String loginFlag) {
        this.loginFlag = loginFlag;
    }

    public ManageOffice getOffice() {
        return office;
    }

    public void setOffice(ManageOffice office) {
        this.office = office;
    }

    public UserGroup getGroup() {
        return group;
    }

    public void setGroup(UserGroup group) {
        this.group = group;
    }
    public void  preInsert(){
        setId(IdGen.getuuid());
    }
}
