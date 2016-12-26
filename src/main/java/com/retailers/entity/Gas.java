package com.retailers.entity;

import com.retailers.common.Base.BaseEntity;

/**
 * Created by GC on 2016/12/26.
 */
public class Gas extends BaseEntity {

    private String gasNumber;
    private String userId;
    private UserMember userMember;

    public String getGasNumber() {
        return gasNumber;
    }

    public void setGasNumber(String gasNumber) {
        this.gasNumber = gasNumber;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public UserMember getUserMember() {
        return userMember;
    }

    public void setUserMember(UserMember userMember) {
        this.userMember = userMember;
    }
}
