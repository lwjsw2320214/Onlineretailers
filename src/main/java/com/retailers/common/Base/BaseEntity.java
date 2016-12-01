package com.retailers.common.Base;

/**
 * Created by GC on 2016/12/01.
 */
public abstract class BaseEntity {

    private  String id;
    /**
     * 备注
     * */
    private String remarks;
    /**
     * 删除标识(0:正常，1：删除)
     * */
    private char delFlag;

    public BaseEntity(){
        this.delFlag='0'; //默认赋值
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public char getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(char delFlag) {
        this.delFlag = delFlag;
    }
}
