<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Error/Exception Information</title>

        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/bootstrap-theme.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>


        <core:choose>
            <core:when test="${requestScope.throwable} == null && ${requestScope.status_code} == null">
                <h2>Error information is missing</h2>
                Please return to the <a href="http://localhost:8080/ManagementInformationSystem">Home Page</a>.
            </core:when>
            <core:when test="${requestScope.exception_type == null and requestScope.status_code != null}">
                The status code : ${requestScope.status_code}
                Please return to the <a href="http://localhost:8080/ManagementInformationSystem">Home Page</a>.
            </core:when>
            <core:otherwise>
                <h2>Error information</h2>
                The status code : ${requestScope.status_code}
                Servlet Name :  ${requestScope.servlet_name} </br></br>
                Exception Type : ${requestScope.exception_type} </br></br>
                The request URI: ${requestScope.request_uri} <br><br>
                The exception message: ${requestScope.exception_message}
                Please return to the <a href="http://localhost:8080/ManagementInformationSystem">Home Page</a>.
            </core:otherwise>
        </core:choose>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="assets/js/bootstrap.min.js"></script>
    </body>
</html>