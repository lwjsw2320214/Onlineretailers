package com.retailers.entity;

import com.retailers.common.Base.BaseEntity;

/**
 * Created by GC on 2016/12/01.
 */
public class ManageLogin extends BaseEntity {

      private  String loginName;
    private  String loginPassword;
    private  String realRame;
    private  String officeId;
    private  String position;
    private  String email;
    private  String phone;
    private  String mobile;
    private  String userType;
    private  String loginFlag;

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
}
