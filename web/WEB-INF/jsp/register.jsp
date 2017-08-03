<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Here | MIS</title>
        <link type="stylesheet" href="assets/css/bootstrap.min.css" />
    </head>
    <body>
        <h1>Register</h1>
        <form action="register" method="post">
            <input type="hidden" name="who" value="<%=(String) request.getAttribute("who")%>" />

            <input type="text" name="roll_number" placeholder="Roll Number" required/>*<br><br>
            <input type="text" name="first_name" placeholder="First Name" required/>*&nbsp;
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
    </body>
</html>