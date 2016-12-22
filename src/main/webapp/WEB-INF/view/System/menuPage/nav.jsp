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
                             </span> <span class="text-muted text-xs block"><shiro:principal  type="com.retailers.entity.ManageLogin" property="office"/><b class="caret"></b></span> </span> </a>
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
            <c:forEach items="${list}" var="menu">
                <c:if test="${menu.pid=='0'}">
                    <li>
                        <a href="${menu.urlPath==null?"#":menu.urlPath}"><i class="${menu.ioc}"></i> <span class="nav-label">${menu.menuName}</span></a>
                        <ul class="nav nav-second-level">
                        <c:forEach items="${list}" var="menuc">
                            <c:if test="${menuc.pid==menu.id}">
                                <li><a href="${menuc.urlPath==null?"#":menuc.urlPath}"><i class="${menuc.ioc}"></i>${menuc.menuName}</a></li>
                            </c:if>
                        </c:forEach>
                        </ul>
                    </li>
                </c:if>
            </c:forEach>
        </ul>

    </div>
</nav>
