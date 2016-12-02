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
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="/static/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!-- Gritter -->
    <link href="/static/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="/static/css/animate.css" rel="stylesheet">
    <link href="/static/css/style.css" rel="stylesheet">
    <link href="/static/treeTable/css/jquery.treetable.css">
    <link href="/static/treeTable/css/jquery.treetable.theme.default.css">

    <!-- Mainly scripts -->
    <script src="/static/js/jquery-2.1.1.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="/static/js/inspinia.js"></script>
    <script src="/static/js/plugins/pace/pace.min.js"></script>

    <script src="/static/treeTable/js/jquery.treetable.js"></script>

    <script>
        $(document).ready(function() {
            $("#treeTable").treetable({ expandable: true });
        });
    </script>
</head>

<body>
<div id="wrapper">
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
                        <li class="active"><a href="/menu"><i class="fa fa-bars"></i>菜单管理</a></li>
                        <li><a href="/userGroup"><i class="fa fa-users"></i>用户组管理</a></li>
                        <li><a href="/office"><i class="fa fa-university"></i>部门管理</a></li>
                        <li><a href="/dictionary"><i class="fa fa-book"></i>字典管理</a></li>
                    </ul>
                </li>

            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="javascript:void(0);"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" action="search_results.html">
                        <div class="form-group">
                            <input type="text" placeholder="搜索..." class="form-control" name="top-search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">欢迎使用</span>
                    </li>
                    <li class="dropdown">
                        <a class="count-info" href="/message">
                            <i class="fa fa-envelope"></i><span class="label label-warning">16</span>
                        </a>
                    </li>
                    <li>
                        <a href="/loginOut">
                            <i class="fa fa-sign-out"></i>退出系统
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
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
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <table id="treeTable" class="table table-striped table-bordered table-condensed">
                                <thead>
                                    <tr>
                                        <th style="width: 33%">菜单名称</th>
                                        <th style="width: 33%">URL地址</th>
                                        <th style="width: 33%" class="text-right">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr  data-tt-id="27" data-tt-parent-id="0">
                                        <td><span class="fa fa-home"></span>首页</td>
                                        <td>/index</td>
                                        <td class="text-right">
                                            <div class="btn-group">
                                                <a class="btn btn-default btn-sm" href="/menu/add/1"><i class="fa fa-pencil-square-o"></i> 添加下级</a>
                                                <a class="btn btn-default btn-sm" href="/menu/edit/1"><i class="fa fa-paste"></i> 修改</a>
                                                <a class="btn btn-default btn-sm" href="/menu/delete/1"><i class="fa fa-trash"></i> 删除</a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-tt-id="45" data-tt-parent-id="27">
                                        <td><i class="icon- hide"></i> 首页</td>
                                        <td>/index</td>
                                        <td class="text-right">
                                            <div class="btn-group">
                                                <a class="btn btn-default btn-sm" href="/menu/add/1"><i class="fa fa-pencil-square-o"></i> 添加下级</a>
                                                <a class="btn btn-default btn-sm" href="/menu/edit/1"><i class="fa fa-paste"></i> 修改</a>
                                                <a class="btn btn-default btn-sm" href="/menu/delete/1"><i class="fa fa-trash"></i> 删除</a>
                                            </div>
                                        </td>
                                    </tr>
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