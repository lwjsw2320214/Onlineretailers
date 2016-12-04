<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>官网后台 | 菜单管理</title>
    <jsp:include page="../include/head.jsp"/>
    <link href="/static/treeTable/css/jquery.treetable.css" rel="stylesheet">
    <link href="/static/treeTable/css/jquery.treetable.theme.default.css" rel="stylesheet">
    <script src="/static/treeTable/js/jquery.treetable.js"></script>

    <script>
        $(document).ready(function() {
            $("#treeTable").treetable({ expandable: true });
        });
    </script>
</head>

<body>
<div id="wrapper">
    <jsp:include page="../include/nav.jsp"/>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <jsp:include page="../include/navbar.jsp"/>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>菜单管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li class="active">
                        <strong>菜单管理</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight ecommerce">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-lg-12 text-right">
                        <a href="/menu/add" class="btn btn-w-m btn-default"><i class="fa fa-plus"></i> 添加菜单</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <table id="treeTable" class="table table-striped table-bordered table-condensed">
                                <thead>
                                    <tr>
                                        <th>菜单名称</th>
                                        <th>URL地址</th>
                                        <th>排序</th>
                                        <th>权限标识</th>
                                        <th>是否显示</th>
                                        <th class="text-right" style="width: 15%">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}"  var="menu">
                                    <tr  data-tt-id="${menu.id}" data-tt-parent-id="${menu.parent.id}">
                                        <td><span class="${menu.ioc}"></span>${menu.menuName}</td>
                                        <td>${menu.urlPath}</td>
                                        <td>${menu.sort}</td>
                                        <td>${menu.permission}</td>
                                        <td>${menu.showFlag eq '1' ?'显示':'隐藏'}</td>
                                        <td class="text-right">
                                            <div class="btn-group">
                                                <a class="btn btn-default btn-sm" href="/menu/add/${menu.id}"><i class="fa fa-pencil-square-o"></i> 添加下级</a>
                                                <a class="btn btn-default btn-sm" href="/menu/edit/${menu.id}"><i class="fa fa-paste"></i> 修改</a>
                                                <a class="btn btn-default btn-sm" href="/menu/delete/${menu.id}"><i class="fa fa-trash"></i> 删除</a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>