<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
${title}
 <c:if test="${i==1}">123</c:if>

<c:forEach items="${list}" var="item">
    <div>${item.id},${item.menuName}</div>
</c:forEach>
</body>
</html>