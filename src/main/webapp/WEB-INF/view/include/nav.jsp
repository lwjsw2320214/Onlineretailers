<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="/static/img/h.png" style="width: 48px;height: 48px" />
                             </span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><shiro:principal property="realRame"/></strong>
                             </span> <span class="text-muted text-xs block">技术部,研发工程师<b class="caret"></b></span> </span> </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a href="profile.html">个人中心</a></li>
                        <li><a href="mailbox.html">消息中心</a></li>
                        <li class="divider"></li>
                        <li><a href="/loginOut">退出系统</a></li>
                    </ul>
                </div>
                <div class="logo-element">
                    MB
                </div>
            </li>
            <li>
                <a href="/index"><i class="fa fa-home"></i> <span class="nav-label">首页</span></a>
            </li>
            <li class="active">
                <a href="javascript:void(0);"><i class="fa fa-gears"></i> <span class="nav-label">系统设置</span> <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="/user"><i class="fa fa-user"></i>用户管理</a></li>
                    <li><a href="/menu"><i class="fa fa-bars"></i>菜单管理</a></li>
                    <li><a href="/userGroup"><i class="fa fa-users"></i>用户组管理</a></li>
                    <li><a href="/office"><i class="fa fa-university"></i>部门管理</a></li>
                    <li><a href="/position"><i class="fa fa-gavel"></i>职位管理</a></li>
                    <li><a href="/dictionary"><i class="fa fa-book"></i>字典管理</a></li>
                </ul>
            </li>

        </ul>

    </div>
</nav>
