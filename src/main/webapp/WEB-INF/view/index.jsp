<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>官网后台 | 系统管理</title>
    <jsp:include page="include/head.jsp"/>
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
                <li class="active">
                    <a href="/index"><i class="fa fa-home"></i> <span class="nav-label">首页</span></a>
                </li>
                <li>
                    <a href="javascript:void(0);"><i class="fa fa-gears"></i> <span class="nav-label">系统设置</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="/user"><i class="fa fa-user"></i>用户管理</a></li>
                        <li><a href="/menu"><i class="fa fa-bars"></i>菜单管理</a></li>
                        <li><a href="/userGroup"><i class="fa fa-users"></i>用户组管理</a></li>
                        <li><a href="/office"><i class="fa fa-university"></i>部门管理</a></li>
                        <li><a href="/position"><i class="fa fa-gavel"></i>职位管理</a></li>
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
        <div class="row  border-bottom white-bg dashboard-header">

            <div class="col-sm-3">
                <h2>欢迎您 <shiro:principal property="realRame"/></h2>
                <small>您有42条未处理信息</small>
                <ul class="list-group clear-list m-t">
                    <li class="list-group-item fist-item">
                                <span class="pull-right">
                                    09:00 pm
                                </span>
                        <span class="label label-success">1</span> 请回复我内容
                    </li>
                    <li class="list-group-item">
                                <span class="pull-right">
                                    10:16 am
                                </span>
                        <span class="label label-info">2</span> 登陆官网网站
                    </li>
                    <li class="list-group-item">
                                <span class="pull-right">
                                    08:22 pm
                                </span>
                        <span class="label label-primary">3</span> 检查线上店铺错误
                    </li>
                    <li class="list-group-item">
                                <span class="pull-right">
                                    11:06 pm
                                </span>
                        <span class="label label-default">4</span> 给客户打电话进行回访
                    </li>
                    <li class="list-group-item">
                                <span class="pull-right">
                                    12:00 am
                                </span>
                        <span class="label label-primary">5</span> 添加10条产品信息
                    </li>
                </ul>
            </div>
            <div class="col-sm-6">
                <div class="flot-chart dashboard-chart">
                    <div class="flot-chart-content" id="flot-dashboard-chart"></div>
                </div>
                <div class="row text-left">
                    <div class="col-xs-4">
                        <div class=" m-l-md">
                            <span class="h4 font-bold m-t block">$ 406,100</span>
                            <small class="text-muted m-b block">天销售额</small>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <span class="h4 font-bold m-t block">$ 150,401</span>
                        <small class="text-muted m-b block">月销售额</small>
                    </div>
                    <div class="col-xs-4">
                        <span class="h4 font-bold m-t block">$ 16,822</span>
                        <small class="text-muted m-b block">年销售额</small>
                    </div>

                </div>
            </div>
            <div class="col-sm-3">
                <div class="statistic-box">
                    <h4>
                       爆款产品
                    </h4>
                    <p>
                       产品销售比例
                    </p>
                    <div class="row text-center">
                        <div class="col-lg-6">
                            <canvas id="polarChart" width="80" height="80"></canvas>
                            <h5 >Kolter</h5>
                        </div>
                        <div class="col-lg-6">
                            <canvas id="doughnutChart" width="78" height="78"></canvas>
                            <h5 >Maxtor</h5>
                        </div>
                    </div>
                    <div class="m-t">
                        <small>此数据按照月为单位进行显示</small>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        setTimeout(function() {
            toastr.options = {
                closeButton: true,
                progressBar: true,
                showMethod: 'slideDown',
                timeOut: 4000
            };
            toastr.success('欢迎使用本管理系统', '欢迎使用');

        }, 1300);


        var data1 = [
            [0,4],[1,8],[2,5],[3,10],[4,4],[5,16],[6,5],[7,11],[8,6],[9,11],[10,30],[11,10],[12,13],[13,4],[14,3],[15,3],[16,6]
        ];
        var data2 = [
            [0,1],[1,0],[2,2],[3,0],[4,1],[5,3],[6,1],[7,5],[8,2],[9,3],[10,2],[11,1],[12,0],[13,2],[14,8],[15,0],[16,0]
        ];
        $("#flot-dashboard-chart").length && $.plot($("#flot-dashboard-chart"), [
                    data1, data2
                ],
                {
                    series: {
                        lines: {
                            show: false,
                            fill: true
                        },
                        splines: {
                            show: true,
                            tension: 0.4,
                            lineWidth: 1,
                            fill: 0.4
                        },
                        points: {
                            radius: 0,
                            show: true
                        },
                        shadowSize: 2
                    },
                    grid: {
                        hoverable: true,
                        clickable: true,
                        tickColor: "#d5d5d5",
                        borderWidth: 1,
                        color: '#d5d5d5'
                    },
                    colors: ["#1ab394", "#1C84C6"],
                    xaxis:{
                    },
                    yaxis: {
                        ticks: 4
                    },
                    tooltip: false
                }
        );

        var doughnutData = [
            {
                value: 300,
                color: "#a3e1d4",
                highlight: "#1ab394",
                label: "App"
            },
            {
                value: 50,
                color: "#dedede",
                highlight: "#1ab394",
                label: "Software"
            },
            {
                value: 100,
                color: "#A4CEE8",
                highlight: "#1ab394",
                label: "Laptop"
            }
        ];

        var doughnutOptions = {
            segmentShowStroke: true,
            segmentStrokeColor: "#fff",
            segmentStrokeWidth: 2,
            percentageInnerCutout: 45, // This is 0 for Pie charts
            animationSteps: 100,
            animationEasing: "easeOutBounce",
            animateRotate: true,
            animateScale: false
        };

        var ctx = document.getElementById("doughnutChart").getContext("2d");
        var DoughnutChart = new Chart(ctx).Doughnut(doughnutData, doughnutOptions);

        var polarData = [
            {
                value: 300,
                color: "#a3e1d4",
                highlight: "#1ab394",
                label: "App"
            },
            {
                value: 140,
                color: "#dedede",
                highlight: "#1ab394",
                label: "Software"
            },
            {
                value: 200,
                color: "#A4CEE8",
                highlight: "#1ab394",
                label: "Laptop"
            }
        ];

        var polarOptions = {
            scaleShowLabelBackdrop: true,
            scaleBackdropColor: "rgba(255,255,255,0.75)",
            scaleBeginAtZero: true,
            scaleBackdropPaddingY: 1,
            scaleBackdropPaddingX: 1,
            scaleShowLine: true,
            segmentShowStroke: true,
            segmentStrokeColor: "#fff",
            segmentStrokeWidth: 2,
            animationSteps: 100,
            animationEasing: "easeOutBounce",
            animateRotate: true,
            animateScale: false
        };
        var ctx = document.getElementById("polarChart").getContext("2d");
        var Polarchart = new Chart(ctx).PolarArea(polarData, polarOptions);

    });
</script>

</body>
</html>