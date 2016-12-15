package com.retailers.common.Base;

import com.retailers.common.ConfigProperties;

/**
 * Created by 刘维军 on 2016/12/15.
 */
public class BaseController {

    protected   Integer pageSize= Integer.parseInt(ConfigProperties.getConfig("pageSize"));
}
