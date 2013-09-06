#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="span10 center">
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">
                <button data-target="${symbol_pound}nav-collapse-01" data-toggle="collapse" class="btn btn-navbar" type="button">
                </button>
                <a class="brand datayes-logo" target="_blank" href="http://www.datayes.com"></a>

                <div id="nav-collapse-01" class="nav-collapse collapse">
                    <ul class="nav">
                        <li class="active"><a href="${symbol_dollar}{contextPath}/user">Users</a></li>
                        <li><a href="${symbol_pound}fakelink">OA</a></li>
                        <li><a href="${symbol_pound}fakelink">Workflow</a></li>
                        <li><a href="${symbol_dollar}{contextPath}/signup">Sign Up</a></li>
                        <li><a href="${symbol_dollar}{contextPath}/login">Login</a></li>
                        <li><a href="${symbol_dollar}{contextPath}/consumer?logout">Logout</a></li>
                    </ul>
                    <form action="" class="navbar-search form-search pull-right">
                        <div class="input-append">
                            <input type="text" placeholder="Search" class="search-query span2">
                            <button class="btn btn-large" type="submit">
                                <i class="fui-search"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
