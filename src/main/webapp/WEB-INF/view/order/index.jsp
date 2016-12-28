<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>官网后台 | 缴费订单</title>
    <jsp:include page="../include/head.jsp"/>
</head>

<body>
<div id="wrapper">
    <c:import url="/index/menuList"/>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <jsp:include page="../include/navbar.jsp"/>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>缴费订单</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li class="active">
                        <strong>缴费订单</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight ecommerce">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <form:form class="form-horizontal" modelAttribute="order" action="/order" method="get">
                        <div class="form-group">
                            <label class="col-lg-1 control-label"> 订单号：</label>
                            <div class="col-lg-2">
                                <form:input path="orderNumber" cssClass="form-control"/> 
                            </div>
                            <label class="col-lg-1 control-label"> 煤气表号：</label>
                            <div class="col-lg-2">
                                <form:input path="gasNumber" cssClass="form-control" />
                            </div>
                            <label class="col-lg-1 control-label"> 订单状态：</label>
                            <div class="col-lg-2"> 
                                <form:radiobutton path="paymentState" value="0"/>未支付
                                <form:radiobutton path="paymentState" value="1"/>已支付
                            </div>
                            <div class="col-lg-1 text-right">
                                <button type="submit" class="btn btn-w-m btn-default">搜索</button>
                            </div>
                        </div>
                    </form:form>
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
                                    <th >缴费订单号</th>
                                    <th >燃气表号</th>
                                    <th >燃气度数</th>
                                    <th >缴费金额</th>
                                    <th >申报时间</th>
                                    <th >缴费状态</th>
                                    <th style="width: 15% " class="text-right">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${pageInfo.list}"  var="orders">
                                    <tr >
                                        <td>${orders.orderNumber}</td>
                                        <td>${orders.gasNumber}</td>
                                        <td>${orders.total}</td>
                                        <td>${orders.paymentAmount}</td>
                                        <td><fmt:formatDate value="${orders.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
                                        <td>${orders.paymentState==0?"未支付":"已支付"}</td>
                                        <td class="text-right">
                                            <div class="btn-group">
                                                <a class="btn btn-default btn-sm" href="/order/info/${orders.id}"><i class="fa fa-paste"></i> 查看详细</a>
                                                <a class="btn btn-default btn-sm" href="/order/edit/${orders.id}"><i class="fa fa-paste"></i> 编辑</a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="text-center">
                                <nav>
                                    <ul class="pagination">
                                        <li <c:if test="${pageInfo.isFirstPage}">class="disabled"</c:if> ><a  <c:if test="${!pageInfo.isFirstPage}"> href="?page=${pageInfo.navigateFirstPage}"</c:if>>«</a></li>
                                        <c:forEach  var="p" begin="1" end="${pageInfo.pages}">
                                            <li <c:if test="${pageInfo.pageNum==p}"> class="active" </c:if> ><a href="?page=${p}">${p}<span class="sr-only">(current)</span></a></li>
                                        </c:forEach>
                                        <li <c:if test="${pageInfo.isLastPage}">class="disabled"</c:if> ><a <c:if test="${!pageInfo.isLastPage}">href="?page=${pageInfo.navigateLastPage}"</c:if>>»</a></li>
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