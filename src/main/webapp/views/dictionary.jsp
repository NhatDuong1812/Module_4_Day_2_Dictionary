<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Dictionary</title>
</head>
<body>
<form action="/dictionary" method="post">
    <div>
        <label for="english">English</label>
        <input type="text" name="english" id="english">
        <button type="submit">Submit</button>
    </div>
    <c:if test="${requestScope['result'] != null}">
        <div>
            Vietnamese: <c:out value="${requestScope['result']}"></c:out>
        </div>
    </c:if>
</form>
</body>
</html>