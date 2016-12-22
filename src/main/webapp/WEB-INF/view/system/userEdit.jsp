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
    <title>官网后台 | 修改用户</title>
    <jsp:include page="../include/head.jsp"/>
</head>

<body>
<div id="wrapper">
    <c:import url="/index/menuList"/>
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <jsp:include page="../include/navbar.jsp"/>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>修改用户</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="/index">首页</a>
                    </li>
                    <li>
                        <a href="/user">用户管理</a>
                    </li>
                    <li class="active">
                        <strong>修改用户</strong>
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
                            <h5>修改用户</h5>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form:form action="/user/edit" cssClass="form-horizontal"  modelAttribute="manageLogin">
                            <form:hidden path="id"/>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">所在部门：</label>
                                <div class="col-sm-5">
                                    <div class="input-group">
                                        <form:input path="office.officeName" readonly="true"  cssClass="form-control parentName"/>
                                        <form:hidden path="officeId"/>
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#officeList" id="showOffice">
                                                <i class="fa fa-search"></i> 选择
                                            </button>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="officeId" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户类型：</label>
                                <div class="col-sm-5">
                                    <div class="input-group">
                                        <form:input path="group.roleName" readonly="true"  cssClass="form-control userRoleName"/>
                                        <form:hidden path="userType"/>
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-primary" data-toggle="modal"  data-target="#userGroupList" id="showUserGroup">
                                                <i class="fa fa-search"></i> 选择
                                            </button>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="userType" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户名：</label>
                                <div class="col-sm-5">
                                    <form:input path="loginName" readonly="true"  cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="loginName" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">登录密码：</label>
                                <div class="col-sm-5">
                                    <form:password path="loginPassword" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="loginPassword" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">真实姓名：</label>
                                <div class="col-sm-5">
                                    <form:input path="realRame" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="realRame" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">邮箱：</label>
                                <div class="col-sm-5">
                                    <form:input path="email" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="email" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">联系电话：</label>
                                <div class="col-sm-5">
                                    <form:input path="phone" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="phone" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">手机：</label>
                                <div class="col-sm-5">
                                    <form:input path="mobile" cssClass="form-control"/>
                                </div>
                                <div class="col-sm-5">
                                    <form:errors path="mobile" cssClass="alert-danger"/>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">是否允许登录：</label>
                                <div class="col-sm-5">
                                    <form:radiobutton path="loginFlag" value="0"/>允许
                                    <form:radiobutton path="loginFlag" value="1"/> 不允许
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
        //所属部门
        $("#showOffice").click(function () {
            $.get("/office/getTreeOffice",function (data){
                var zNodes=data;
                $.fn.zTree.init($("#officeTree"), setting, zNodes);
            })
        });

        $("#officeSave").click(function () {
            var treeObj = $.fn.zTree.getZTreeObj("officeTree");
            var d=treeObj.getSelectedNodes();
            if (d.length>0){
                $(".parentName").val(d[0].name);
                $("#officeId").val(d[0].id);
            }
        });

        //用户类型
        $("#showUserGroup").click(function(){
            $.get("/userGroup/getAll",function (data) {
                var h="";
                $("#userGroupTable").html(h);
                $(data).each(function (i,item) {
                    h+='<div class="col-lg-3"><input  name="roleValue" type="radio" value="'+item.id+'" data="'+item.roleName+'"/>'+item.roleName+'</div>';
                })
                $("#userGroupTable").html(h);
            })
        });
        //用户类型点击确定
        $("#serGroupListSave").click(function () {
            var typeId=  $('input[name="roleValue"]:checked').val();
            var typeName=$('input[name="roleValue"]:checked').attr("data");
            $(".userRoleName").val(typeName);
            $("#userType").val(typeId);
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