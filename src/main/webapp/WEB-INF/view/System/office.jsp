<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>官网后台 | 部门管理</title>
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
                <h2>部门管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li class="active">
                        <strong>部门管理</strong>
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

                        <a href="/office/add" class="btn btn-w-m btn-default"><i class="fa fa-plus"></i> 添加部门</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <c:if test="${message!=null}">
                                <div class="alert alert-success alert-dismissable">
                                    <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                        ${message}
                                </div>
                            </c:if>
                            <table id="treeTable" class="table table-striped table-bordered table-hover dataTables-example dataTable">
                                <thead style="font-size: 12px">
                                <tr>
                                    <th >部门名称</th>
                                    <th class="text-right" style="width: 18%">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}"  var="manageOffice">
                                    <tr  data-tt-id="${manageOffice.id}" data-tt-parent-id="${manageOffice.parent.id}">
                                        <td>${manageOffice.officeName}</td>
                                        <td class="text-right">
                                            <div class="btn-group">
                                                <a class="btn btn-default btn-sm" href="/office/add?id=${manageOffice.id}"><i class="fa fa-pencil-square-o"></i> 添加下级</a>
                                                <a class="btn btn-default btn-sm" href="/office/edit/${manageOffice.id}"><i class="fa fa-paste"></i> 修改</a>
                                                <a class="btn btn-default btn-sm" href="/office/delete/${manageOffice.id}" onclick="if(confirm( '您确定要删除吗？')==false)return   false;"><i class="fa fa-trash"></i> 删除</a>
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