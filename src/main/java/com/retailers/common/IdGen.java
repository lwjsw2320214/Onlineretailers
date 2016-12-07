package com.retailers.common;

import java.util.UUID;

/**
 * Created by GC on 2016/12/07.
 */
public class IdGen {

    public static String getuuid(){
        return UUID.randomUUID().toString().replaceAll("-","");
    }
}
