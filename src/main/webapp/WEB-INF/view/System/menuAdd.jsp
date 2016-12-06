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
                                        <input type="text" id="pname" class="form-control">
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
                                        <input type="text" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#iocList">
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
                    IOC图标
                </h4>
            </div>
            <div class="modal-body">
                按下 ESC 按钮退出。
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">
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
                $("#pname").val(d[0].name);
                $("#pid").val(d[0].id);
            }
        })
    })

</script>
</body>
</html>