<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${requestScope.score }</h1>
<c:if test="${score>=60 }">
<h1 style="color:green">恭喜,你已通过测试</h1>
</c:if>
<c:if test="${score<60 }">
<h1 style="color:red">对不起,再接再厉</h1>
</c:if>

<!-- 多分支判断 -->
<c:choose>
<c:when test="${grade=='A' }">
<h2>你狠优秀</h2>
</c:when>
<c:when test="${grade=='B' }">
<h2>不错哟</h2>
</c:when>
<c:when test="${grade=='C' }">
<h2>水平一般</h2>
<c:otherwise>
<h2>随缘</h2>
</c:otherwise>
</c:when>
</c:choose>

<c:forEach items="${requestScope.companies }" var="c" varStatus="idx">

<h2>${c.cname }${idx.index+1}${c.url }</h2>
</c:forEach>


</body>
</html>