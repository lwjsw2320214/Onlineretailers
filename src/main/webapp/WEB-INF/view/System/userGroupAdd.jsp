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
    <title>官网后台 | 用户组管理</title>
    <jsp:include page="../include/head.jsp"/>

</head>

<body>
<div id="wrapper">
    <jsp:include page="../include/nav.jsp"/>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <jsp:include page="../include/navbar.jsp"/>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>用户组管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li>
                        <a href="/userGroup">用户组管理</a>
                    </li>
                    <li class="active">
                        <strong>添加用户组</strong>
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
                            <h5>添加用户组</h5>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form:form action="/userGroup/add" cssClass="form-horizontal"  modelAttribute="userGroup">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户组名称：</label>
                                <div class="col-sm-5">
                                    <form:input path="roleName" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="roleName" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <input type="hidden" name="roleList" id="roleList" value="${roleList}" />
                                <label class="col-sm-2 control-label">访问权限：</label>
                                <div class="col-sm-10" >
                                    <div class="zTreeDemoBackground left">
                                        <ul id="menuTree" class="ztree"></ul>
                                    </div>
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
<link href="/static/ztree/css/zTreeStyle.css"  rel="stylesheet">
<script src="/static/ztree/js/jquery.ztree.core.min.js"></script>
<script src="/static/ztree/js/jquery.ztree.excheck.min.js"></script>
<script>
    $(function () {
        var setting = {
            check: {
                enable: true
            },
            data: {
                simpleData: {
                    enable: true
                }
            },
            callback: {
                onCheck: onCheck
            }

        };
        var zNodes=[<c:forEach items="${menuList}" var="menu">{id:"${menu.id}",pId:"${menu.pid}",name:"${menu.menuName}"},</c:forEach>];
        $.fn.zTree.init($("#menuTree"), setting, zNodes);

        var treeObj = $.fn.zTree.getZTreeObj("menuTree");
        treeObj.expandAll(true);
        var checkNodeId="${roleList}";
        if(checkNodeId.length>0){
            var checkArray=checkNodeId.split(',');
            $(checkArray).each(function (item,dataValue) {
                    treeObj.checkNode(treeObj.getNodeByParam( "id",dataValue),true);
            });
        }
    })

    function onCheck(e, treeId, treeNode) {
        var treeObj=$.fn.zTree.getZTreeObj("menuTree"),
                nodes=treeObj.getCheckedNodes(true),
                v="";
        for(var i=0;i<nodes.length;i++){
            v+=nodes[i].id + ",";
        }
        if (v.length>0){
            v=v.substring(0,v.length-1);
        }
        //alert(v); //获取选中节点的值
        $("#roleList").val(v);
    }

</script>
</body>
</html>