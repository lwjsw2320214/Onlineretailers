package com.retailers.entity;

import com.retailers.common.Base.BaseEntity;
import org.hibernate.validator.constraints.NotBlank;

/**
 * Created by 刘维军 on 2016/12/22.
 */
public class Protection  extends BaseEntity{

    @NotBlank(message = "问题不能为空！")
    private String content;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
