<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setAttribute("amt", 1987654.326);
request.setAttribute("now", new java.util.Date());
request.setAttribute("html", "<a href='index.html'>index</a>");
request.setAttribute("nothing", null);
%>
<h2>${now }</h2>
<h2>
<fmt:formatDate value="${requestScope.now }" pattern="yyyy年MM月dd日HH小时mm分ss秒SSS毫秒"/>
</h2>
<h2><fmt:formatNumber value="${amt }" pattern="0,000.00"></fmt:formatNumber></h2>
<h2>null 默认值:${nothing }</h2>
<h2>null 默认值:<c:out value="${nothing }" default="无"></c:out></h2>
<h2>
<c:out value="${html }" escapeXml="true"></c:out>
</h2>
</body>
</html>