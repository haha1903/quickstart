#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="common/head.jsp" %>
<body>
<%@include file="common/nav.jsp" %>
<div class="container">
    <div class="text-center span10 center">
        <h3 class="demo-title">Service</h3>
        <div class="demo-content-wide">
            <table class="table table-striped table-hover">
                <tr>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${symbol_dollar}{users}" var="user">
                    <tr class='user'>
                        <td>${symbol_dollar}{user.name}</td>
                        <td>${symbol_dollar}{user.password}</td>
                        <td><a href="${symbol_pound}" class="btn btn-large btn-block btn-info delete" id="${symbol_dollar}{user.id}">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<%@include file="common/foot.jsp" %>
<script type="text/javascript" src="${symbol_dollar}{contextPath}/resources/js/login.js"></script>
</body>
</html>
