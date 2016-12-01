package com.retailers.common;

import org.apache.shiro.codec.Base64;

import java.security.MessageDigest;

/**
 * Created by 刘维军 on 2016/12/01.
 */
public class Encryption {
     public String md5Encryption(String str){
         String newStr=null;
         try{
            MessageDigest messageDigest=MessageDigest.getInstance("MD5");
             newStr= Base64.encodeToString(messageDigest.digest(str.getBytes()));
         }catch (Exception e){

         }
         return newStr;
     }
}
