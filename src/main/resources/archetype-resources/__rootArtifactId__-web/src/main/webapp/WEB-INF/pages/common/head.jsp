#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" tagdir="/WEB-INF/tags/static" %>
<c:set var="contextPath" value="${symbol_dollar}{pageContext.request.contextPath}"/>
<head>
    <meta charset="utf-8">
    <title>DataYes</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Loading Bootstrap -->
    <link href="${symbol_dollar}{contextPath}/resources/lib/flatui/UI/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${symbol_dollar}{contextPath}/resources/lib/flatui/UI/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="${symbol_dollar}{contextPath}/resources/lib/flatui/UI/bootstrap/css/bootstrap-docs.css" rel="stylesheet">
    <!-- Loading Flat UI -->
    <link href="${symbol_dollar}{contextPath}/resources/lib/flatui/UI/css/flat-ui.css" rel="stylesheet">
    <link href="${symbol_dollar}{contextPath}/resources/css/main.css" rel="stylesheet">
    <s:css href="/resources/css/main.css"/>
    
    <link rel="shortcut icon" href="${symbol_dollar}{contextPath}/resources/lib/flatui/UI/images/favicon.ico">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
    <script src="${symbol_dollar}{contextPath}/resources/lib/flatui/UI/js/html5shiv.js"></script>
    <![endif]-->
    <script type="text/javascript">var contextPath = '${symbol_dollar}{contextPath}';</script>
</head>