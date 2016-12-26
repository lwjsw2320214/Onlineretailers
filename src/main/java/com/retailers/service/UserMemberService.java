package com.retailers.service;

import com.retailers.dao.IUserMemberDao;
import com.retailers.entity.UserMember;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GC on 2016/12/23.
 */
@Service
@Transactional(readOnly = true)
public class UserMemberService {

    @Autowired
    IUserMemberDao dao;

    /**
     *  查询所有的会员
     * */
    public List<UserMember> getAll(UserMember userMember){
        return  dao.getAll(userMember);
    }

    /**
     * 删除用户
     * */
    @Transactional(readOnly = false)
    public Integer delete(String id){
        return  dao.delete(id);
    }


    /**
     * 根据id查找用户
     * */
    public UserMember getUserForId(String id){
        return  dao.getUserForId(id);
    }

    /**
     * 修改用户
     * */
    @Transactional(readOnly = false)
    public Integer edit(UserMember member){
        return  dao.edit(member);
    }

}
