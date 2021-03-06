<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>官网后台 | 密保问题管理</title>
    <jsp:include page="../include/head.jsp"/>
</head>

<body>
<div id="wrapper">
    <c:import url="/index/menuList"/>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <jsp:include page="../include/navbar.jsp"/>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>密保问题管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li class="active">
                        <strong>密保问题管理</strong>
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

                        <a href="/protection/add" class="btn btn-w-m btn-default"><i class="fa fa-plus"></i> 添加问题</a>
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
                            <table class="table table-striped table-bordered table-hover dataTables-example dataTable">
                                <thead style="font-size: 12px">
                                <tr>
                                    <th >问题</th>
                                    <th class="text-right" style="width: 18%">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${pageInfo.list}"  var="protection">
                                    <tr >
                                        <td>${protection.content}</td>
                                        <td class="text-right">
                                            <div class="btn-group">
                                                <a class="btn btn-default btn-sm" href="/protection/edit/${protection.id}"><i class="fa fa-paste"></i> 修改</a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="text-center">
                                <nav>
                                    <ul class="pagination">
                                        <li <c:if test="${protection.isFirstPage}">class="disabled"</c:if> ><a  <c:if test="${!protection.isFirstPage}"> href="?page=${protection.navigateFirstPage}"</c:if>>«</a></li>
                                        <c:forEach  var="p" begin="1" end="${protection.pages}">
                                            <li <c:if test="${protection.pageNum==p}"> class="active" </c:if> ><a href="?page=${p}">${p}<span class="sr-only">(current)</span></a></li>
                                        </c:forEach>
                                        <li <c:if test="${protection.isLastPage}">class="disabled"</c:if> ><a <c:if test="${!pagprotectioneInfo.isLastPage}">href="?page=${protection.navigateLastPage}"</c:if>>»</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>