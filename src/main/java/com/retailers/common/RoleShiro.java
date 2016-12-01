package com.retailers.common;

import com.retailers.entity.ManageLogin;
import com.retailers.service.ManageLoginService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by GC on 2016/11/29.
 */
@Service
@Transactional
public class RoleShiro extends AuthorizingRealm {

    @Autowired
    ManageLoginService service;

    /**
     *  权限认证
     * */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
        return info;
    }
    /**
     * 登录认证
     * */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken upt=(UsernamePasswordToken) authenticationToken;
        ManageLogin manageLogin=new ManageLogin();
        manageLogin.setLoginName(upt.getUsername());
        ManageLogin ml=service.getUserForUserName(manageLogin);
        if (ml!=null){

            return  new SimpleAuthenticationInfo(ml.getLoginName(),ml.getLoginPassword(),getName());
        }
        return null;
    }


}
