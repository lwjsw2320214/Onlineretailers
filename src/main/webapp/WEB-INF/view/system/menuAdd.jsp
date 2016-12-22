<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>官网后台 | 菜单管理</title>
    <jsp:include page="../include/head.jsp"/>
</head>

<body>
<div id="wrapper">
    <c:import url="/index/menuList"/>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <jsp:include page="../include/navbar.jsp"/>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>菜单管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li>
                        <a href="/menu">菜单管理</a>
                    </li>
                    <li class="active">
                        <strong>添加菜单</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight ecommerce">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>菜单添加</h5>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form:form action="/menu/add" cssClass="form-horizontal"  modelAttribute="menu">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">上级菜单：</label>
                                <div class="col-sm-5">
                                    <div class="input-group">
                                        <form:input path="parent.menuName" cssClass="form-control parentName"/>
                                        <form:hidden path="pid"/>
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#menuList" id="showMenu">
                                                <i class="fa fa-search"></i> 选择
                                            </button>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">菜单名称：</label>
                                <div class="col-sm-5">
                                    <form:input path="menuName" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="menuName" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">菜单路径：</label>
                                <div class="col-sm-5">
                                    <form:input path="urlPath" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="urlPath" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">IOC图标：</label>
                                <div class="col-sm-5">
                                    <div class="input-group">
                                        <i class="" id="showIoc" style="font-size: 20px"></i>
                                       <form:hidden path="ioc"/>
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#iocList" id="seelctioc">
                                                <i class="fa fa-search"></i> 选择</button>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">权限标识：</label>
                                <div class="col-sm-5">
                                    <form:input path="permission" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="permission" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">排序：</label>
                                <div class="col-sm-5">
                                    <form:input path="sort" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">是否隐藏：</label>
                                <div class="col-sm-5">
                                    <form:radiobutton path="showFlag" value="1"/> 显示
                                    <form:radiobutton path="showFlag" value="0"/>隐藏
                                </div>
                                <div class="col-sm-5">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">备注：</label>
                                <div class="col-sm-5"> 
                                    <form:textarea path="remarks" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"></label>
                                <div class="col-sm-5">
                                    <button class="btn btn-primary" type="submit">保存</button>
                                    <button type="button" class="btn btn-outline btn-default" onclick="javascript:history.back();">返回</button>
                                </div>
                                <div class="col-sm-5">
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="menuList" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="menuListLabel">
                   选择菜单
                </h4>
            </div>
            <div class="modal-body">
                <div class="zTreeDemoBackground left">
                    <ul id="menuTree" class="ztree"></ul>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="menuSave" class="btn btn-primary" data-dismiss="modal">
                    确定
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- 模态框（Modal2） -->
<div class="modal fade" id="iocList" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="iocListLabel">
                    菜单IOC图标
                </h4>
            </div>
            <div class="modal-body">
                <div class="row  icons-box" id="ioctable">
                    <div class="infont col-lg-2 "><a href="javascript:void(0);"><i class="fa fa-adjust"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-anchor"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-archive"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-arrows"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-arrows-h"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-arrows-v"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-asterisk"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-ban"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bar-chart-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-barcode"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bars"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-beer"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bell"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bell-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bolt"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-book"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bookmark"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bookmark-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-briefcase"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bug"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-building-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bullhorn"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-bullseye"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-calendar"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-calendar-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-camera"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-camera-retro"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-caret-square-o-down"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-caret-square-o-left"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-caret-square-o-right"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-caret-square-o-up"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-certificate"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-check"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-check-circle"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-check-circle-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-check-square"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-check-square-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-circle"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-circle-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-clock-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-cloud"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-cloud-download"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-cloud-upload"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-code"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-code-fork"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-coffee"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-cog"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-cogs"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-comment"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-comment-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-comments"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-comments-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-compass"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-credit-card"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-crop"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-crosshairs"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-cutlery"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-dashboard"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-desktop"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-dot-circle-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-download"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-edit"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-ellipsis-h"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-ellipsis-v"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-envelope"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-envelope-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-eraser"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-exchange"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-exclamation"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-exclamation-circle"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-exclamation-triangle"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-external-link"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-external-link-square"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-eye"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-eye-slash"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-female"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-fighter-jet"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-film"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-filter"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-fire"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-fire-extinguisher"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-flag"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-flag-checkered"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-flag-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-flash"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-flask"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-folder"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-folder-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-folder-open"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-folder-open-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-frown-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-gamepad"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-gavel"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-gear"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-gears"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-gift"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-glass"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-globe"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-group"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-hdd-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-headphones"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-heart"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-heart-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-home"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-inbox"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-info"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-info-circle"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-key"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-keyboard-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-laptop"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-leaf"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-legal"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-lemon-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-level-down"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-level-up"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-lightbulb-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-location-arrow"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-lock"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-magic"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-magnet"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-mail-forward"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-mail-reply"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-mail-reply-all"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-male"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-map-marker"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-meh-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-microphone"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-microphone-slash"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-minus"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-minus-circle"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-minus-square"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-minus-square-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-mobile"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-mobile-phone"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-money"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-moon-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-music"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-pencil"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-pencil-square"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-pencil-square-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-phone"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-phone-square"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-picture-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-plane"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-plus"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-plus-circle"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-plus-square"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-plus-square-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-power-off"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-print"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-puzzle-piece"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-qrcode"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-question"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-question-circle"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-quote-left"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-quote-right"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-random"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-refresh"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-reply"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-reply-all"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-retweet"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-road"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-rocket"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-rss-square"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-search"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-search-minus"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-search-plus"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-share"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-share-square"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-share-square-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-shield"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-shopping-cart"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sign-in"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sign-out"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-signal"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sitemap"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-smile-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-alpha-asc"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-alpha-desc"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-amount-asc"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-amount-desc"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-asc"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-desc"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-down"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-numeric-asc"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-numeric-desc"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sort-up"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-spinner"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-square"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-square-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-star"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-star-half"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-star-half-empty"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-star-half-full"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-star-half-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-star-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-subscript"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-suitcase"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-sun-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-superscript"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-tablet"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-tachometer"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-tag"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-tags"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-tasks"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-terminal"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-thumb-tack"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-thumbs-down"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-thumbs-o-down"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-thumbs-o-up"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-thumbs-up"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-ticket"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-times"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-times-circle"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-times-circle-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-tint"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-toggle-down"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-toggle-left"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-toggle-right"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-toggle-up"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-trash-o"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-trophy"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-truck"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-umbrella"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-unlock"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-unlock-alt"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-unsorted"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-upload"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-user"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-users"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-video-camera"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-volume-down"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-volume-off"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-volume-up"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-warning"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-wheelchair"></i></a></div>
                    <div class="infont col-lg-2"><a href="javascript:void(0);"><i class="fa fa-wrench"></i></a></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="saveIoc">
                    确定
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<link href="/static/ztree/css/zTreeStyle.css"  rel="stylesheet">
<script src="/static/ztree/js/jquery.ztree.core.min.js"></script>
<script>
    var setting = {
        data: {
            simpleData: {
                enable: true
            }
        }
    };
    $(function () {
        $("#showMenu").click(function () {
            $.get("/menu/getTreeMenu",function (data){
                var zNodes=data;
                $.fn.zTree.init($("#menuTree"), setting, zNodes);
            })
        });

        $("#menuSave").click(function () {
            var treeObj = $.fn.zTree.getZTreeObj("menuTree");
            var d=treeObj.getSelectedNodes();
            if (d.length>0){
                $(".parentName").val(d[0].name);
                $("#pid").val(d[0].id);
            }
        });

        $("#seelctioc").click(function () {
            $("#ioctable div a").removeClass("selectIoc");
        });

        $("#ioctable div a").click(function () {
            $("#ioctable div a").removeClass("selectIoc");
           $(this).addClass("selectIoc");
        });
        $("#saveIoc").click(function () {
          var iocClass= $(".selectIoc i").attr("class");
            $("#showIoc").addClass(iocClass);
            $("#ioc").val(iocClass);
        });
    })

</script>
<style>
    .icons-box .infont  .selectIoc{
         background: #1c84c6;
    }
    .icons-box .infont  .selectIoc i{
        color: white;
    }
</style>
</body>
</html>