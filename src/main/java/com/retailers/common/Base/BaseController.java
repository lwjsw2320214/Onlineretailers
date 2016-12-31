package com.retailers.common.Base;

import com.retailers.common.ConfigProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by 刘维军 on 2016/12/15.
 */
public class BaseController {

    protected   Integer pageSize= Integer.parseInt(ConfigProperties.getConfig("pageSize"));
    /**
     * 日志对象1
     */
    protected Logger logger = LoggerFactory.getLogger(getClass());
}
