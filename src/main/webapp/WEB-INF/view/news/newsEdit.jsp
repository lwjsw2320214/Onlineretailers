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
    <title>官网后台 | 新闻管理</title>
    <jsp:include page="../include/newHead.jsp"/>
</head>

<body>
<div id="wrapper">
    <c:import url="/index/menuList"/>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <jsp:include page="../include/navbar.jsp"/>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>新闻管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li>
                        <a href="/article/news">新闻管理</a>
                    </li>
                    <li class="active">
                        <strong>新闻编辑</strong>
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
                            <h5>新闻编辑</h5>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form:form action="/article/newsEdit" cssClass="form-horizontal dropzone"  modelAttribute="article">
                            <form:hidden path="id"/>
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
                                    <img data-src="holder.js/140x140" id="imgshow" class="img-thumbnail" alt="140x140" src="${article.imges!=null&&article.imges!=''?article.imges:'data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgdmlld0JveD0iMCAwIDE0MCAxNDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjQ1LjUiIHk9IjcwIiBzdHlsZT0iZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQ7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+MTQweDE0MDwvdGV4dD48L2c+PC9zdmc+'}" data-holder-rendered="true" style="width: 140px; height: 140px;">
                                    <div id="queue"></div>
                                    <input id="file_upload" name="file_upload" type="file" multiple="true">

                                </div>
                                <div class="col-sm-5">
                                    <form:hidden path="imges"/>
                                    <form:errors path="imges" cssClass="alert-danger"/>
                                    上传图片只能为jpg或者为gif格式
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">新闻内容：</label>
                                <div class="col-sm-8 ">
                                    <div class="summernote">${article.content}</div>
                                </div>
                                <div class="col-sm-2">
                                    <input type="hidden" id="content" name="content" value=""/>
                                    <form:errors path="content" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"></label>
                                <div class="col-sm-5">
                                    <button class="btn btn-primary" type="submit" onclick="save()">保存</button>
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
<!-- Mainly scripts -->
<script src="/static/js/jquery-2.1.1.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="/static/js/inspinia.js"></script>
<script src="/static/js/plugins/pace/pace.min.js"></script>

<!-- SUMMERNOTE -->
<script src="/static/js/plugins/summernote/summernote.min.js"></script>

<script>
    $(document).ready(function(){
        $('.summernote').summernote();
    });
    var save = function() {
        var aHTML = $('.summernote').code(); //save HTML If you need(aHTML: array).
        $('.summernote').destroy();
        $("#content").val(aHTML);
    };
</script>

<link href="/static/fileupload/uploadify.css" rel="stylesheet"/>
<script src="/static/fileupload/jquery.uploadify.min.js"></script>
<script>
    $(function() {
        $('#file_upload').uploadify({
            'swf'      : '/static/fileupload/uploadify.swf',
            'uploader' : '/article/imgAdd',
            'cancelImg': '/static/fileupload/uploadify-cancel.png',
            'buttonText':'',
            'width':'130',
            'height':'36',
            'auto': true,
            'multi': false,
            'onUploadSuccess' : function(file, data, response) {
                $("#imges").val(data);
                $("#imgshow").attr("src",data);
            }

        });
    });
</script>

</body>
</html>