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
        <title>Register Here | MIS</title>

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


        <h1>Register</h1>

        <form action="register" method="post">
            <input class="form-control" type="hidden" name="who" value="<%=(String) request.getAttribute("who")%>" />

            <input type="text" name="roll_number" placeholder="Roll Number" required/>*<br><br>
            <input class="form-control" type="text" name="first_name" placeholder="First Name" required/>*&nbsp;
            <input type="text" name="middle_name" placeholder="Middle Name" />&nbsp;
            <input type="text" name="last_name" placeholder="Last Name" required/>*<br><br>
            <input type="text" name="branch" placeholder="Branch Name" required/>*<br><br>
            <input type="date" name="dob" required/>*<br><br>
            <input type="text" name="cpi" placeholder="CPI"required/>*<br><br>
            <input type="text" name="spi" placeholder="SPI"/><br><br>
            <input type="file" name="photo" /><br><br>

            <input type="submit" value="Submit"/>
            <input type="reset" value="Reset"/>
        </form>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="assets/js/bootstrap.min.js"></script>
    </body>
</html>