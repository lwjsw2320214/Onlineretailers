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
    <title>官网后台 | 新闻添加</title>
    <jsp:include page="../include/head.jsp"/>

</head>

<body>
<div id="wrapper">
    <c:import url="/index/menuList"/>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <jsp:include page="../include/navbar.jsp"/>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>新闻添加</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li>
                        <a href="/article/news">新闻管理</a>
                    </li>
                    <li class="active">
                        <strong>新闻添加</strong>
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
                            <h5>新闻添加</h5>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form:form action="/article/newsAdd" cssClass="form-horizontal"  modelAttribute="article">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">新问标题：</label>
                                <div class="col-sm-5">
                                    <form:input path="title" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="title" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">新问简介：</label>
                                <div class="col-sm-5">
                                    <form:textarea path="briefIntroduction" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="briefIntroduction" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">略缩图片：</label>
                                <div class="col-sm-5">
                                    <span class="btn btn-success fileinput-button">
                                        <i class="glyphicon glyphicon-plus"></i>
                                        <span>Select files...</span>
                                        <input id="fileupload" type="file" name="files[]" multiple>
                                    </span>
                                    <!-- The global progress bar -->
                                    <div id="progress" class="progress">
                                        <div class="progress-bar progress-bar-success"></div>
                                    </div>
                                    <!-- The container for the uploaded files -->
                                    <div id="files" class="files"></div>
                                        <form:hidden path="imges" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="imges" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">新闻内容：</label>
                                <div class="col-sm-5">
                                    <form:textarea path="content" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="content" cssClass="alert-danger"/>
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
<div class="modal fade" id="officeList" tabindex="-1" role="dialog" aria-labelledby="officeListLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="officeListLabel">
                    选择部门
                </h4>
            </div>
            <div class="modal-body">
                <div class="zTreeDemoBackground left">
                    <ul id="officeTree" class="ztree"></ul>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="officeSave" class="btn btn-primary" data-dismiss="modal">
                    确定
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!-- 模态框（Modal） -->
<div class="modal fade" id="userGroupList" tabindex="-1" role="dialog" aria-labelledby="officeListLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="userGroupListLabel">
                    选择用户类型
                </h4>
            </div>
            <div class="modal-body">
                <div class="row" id="userGroupTable"></div>
            </div>
            <div class="modal-footer">
                <button type="button" id="serGroupListSave" class="btn btn-primary" data-dismiss="modal">
                    确定
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<link href="/static/fileupload/css/jquery.fileupload.css"  rel="stylesheet">
<script src="/static/fileupload/js/jquery.iframe-transport.js" type="application/javascript"/>
<script src="/static/fileupload/js/jquery.fileupload.js"  type="application/javascript"/>
<script>
    $(function () {
        'use strict';
        // Change this to the location of your server-side upload handler:
        var url = window.location.hostname === 'blueimp.github.io' ?
                '//jquery-file-upload.appspot.com/' : 'server/php/';
        $('#fileupload').fileupload({
            url: url,
            dataType: 'json',
            done: function (e, data) {
                $.each(data.result.files, function (index, file) {
                    $('<p/>').text(file.name).appendTo('#files');
                });
            },
            progressall: function (e, data) {
                var progress = parseInt(data.loaded / data.total * 100, 10);
                $('#progress .progress-bar').css(
                        'width',
                        progress + '%'
                );
            }
        }).prop('disabled', !$.support.fileInput)
                .parent().addClass($.support.fileInput ? undefined : 'disabled');
    });
</script>
</body>
</html>