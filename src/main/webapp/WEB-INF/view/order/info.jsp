<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>官网后台 | 缴费订单查看</title>
    <jsp:include page="../include/head.jsp"/>
</head>

<body>
<div id="wrapper">
    <c:import url="/index/menuList"/>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <jsp:include page="../include/navbar.jsp"/>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>缴费订单查看</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li>
                        <a href="/order">缴费订单</a>
                    </li>
                    <li class="active">
                        <strong>缴费订单查看</strong>
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
                            <h5>缴费订单查看</h5>
                        </div>
                    </div>
                    <div class="ibox-content">
                       <div class="row">
                           <div class="col-lg-1 text-right">订单号：</div>
                           <div class="col-lg-5">${order.orderNumber}</div>
                       </div>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-lg-1 text-right">燃气表编号：</div>
                            <div class="col-lg-3">${order.gasNumber}</div>
                            <div class="col-lg-1 text-right">起止度数：</div>
                            <div class="col-lg-3">${order.firstScale} - ${order.lastScale}</div>
                            <div class="col-lg-1 text-right">燃气起止日期：</div>
                            <div class="col-lg-3"><fmt:formatDate value="${order.firstTime}" pattern="yyyy-MM-dd"/> 至 <fmt:formatDate value="${order.createTime}" pattern="yyyy-MM-dd" /></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-lg-1 text-right">总度数：</div>
                            <div class="col-lg-3">${order.total}</div>
                            <div class="col-lg-1 text-right">总金额：</div>
                            <div class="col-lg-3">${order.paymentAmount}元</div>
                            <div class="col-lg-1 text-right">单价：</div>
                            <div class="col-lg-3">${order.unitPrice}元</div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-lg-1 text-right">支付状态：</div>
                            <div class="col-lg-3">${order.paymentState==0?"未支付":"已支付"}</div>
                            <div class="col-lg-1 text-right">实际支付金额：</div>
                            <div class="col-lg-3">${order.paymentType}</div>
                            <div class="col-lg-1 text-right">支付方式：</div>
                            <div class="col-lg-3">${order.paymentType==1?"支付宝支付":order.paymentType==2?"微信支付":""}</div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-lg-1 text-right">支付账号：</div>
                            <div class="col-lg-5">${order.paymentAccount}</div>
                            <div class="col-lg-1 text-right">支付日期：</div>
                            <div class="col-lg-5"><fmt:formatDate value="${order.paymentTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-lg-1 text-right">本年度年检照片：</div>
                            <div class="col-lg-10">
                                <c:if test="${yi.gasImg==null}">
                                    未上传
                                </c:if>
                                <c:if test="${yi.gasImg!=null}">
                                    <img src="${yi.gasImg}" style="width: 200px;height: 200px;"/>
                                </c:if>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <button type="button" class="btn btn-outline btn-default" onclick="javascript:history.back();">返回</button>
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