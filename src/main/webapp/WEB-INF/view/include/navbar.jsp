<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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