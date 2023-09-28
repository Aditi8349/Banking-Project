<%-- 
    Document   : UpdateCustomer$.jsp
    Created on : 17 Aug, 2023, 1:51:01 AM
    Author     : Aditi Soni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UpdateCustomer.jsp" method="post">
            <h1>Enter Accno Whose data you want to change</h1><input type="text" name="accno" placeholder="acco" required>
           
            <button type="submit">Go</button>
           
        </form>
    </body>
</html>
