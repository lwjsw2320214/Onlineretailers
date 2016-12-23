package com.retailers.dao;


import com.retailers.entity.UserMember;

import java.util.List;

/**
 * Created by GC on 2016/12/21.
 */
public interface IUserMemberDao {

    /**
     *  查询所有的会员
     * */
    List<UserMember> getAll(UserMember userMember);
    /**
     * 根据用户名查找用户
     * */
    UserMember getUserForLoginName(UserMember userMember);
    /**
     * 添加用户
     * */
    Integer add(UserMember member);

    /**
     * 删除用户
     * */
    Integer delete(String id);

}
