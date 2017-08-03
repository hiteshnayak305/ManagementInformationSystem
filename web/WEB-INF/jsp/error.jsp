<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error/Exception Information</title>
    </head>
    <body bgcolor = \"#f0f0f0\">
        <core:choose>
            <core:when test="${requestScope.throwable} == null && ${requestScope.status_code} == null">
                <h2>Error information is missing</h2>
                Please return to the <a href="http://localhost:8080/ManagementInformationSystem">Home Page</a>.
            </core:when>
            <core:when test="${requestScope.status_code != null}">
                The status code : ${requestScope.status_code}
                Servlet Name :  ${requestScope.servlet_name} </br></br>
                Exception Type : ${requestScope.exception_type.getName()} </br></br>
                The request URI: ${requestScope.request_uri} <br><br>
                The exception message: ${requestScope.throwable.getMessage()}
                Please return to the <a href="http://localhost:8080/ManagementInformationSystem">Home Page</a>.
            </core:when>
            <core:otherwise>
                <h2>Error information</h2>
                Servlet Name :  ${requestScope.servlet_name} </br></br>
                Exception Type : ${requestScope.exception_type.getName()} </br></br>
                The request URI: ${requestScope.request_uri} <br><br>
                The exception message: ${requestScope.exception_message}
                Please return to the <a href="http://localhost:8080/ManagementInformationSystem">Home Page</a>.
            </core:otherwise>
        </core:choose>
    </body>
</html>
