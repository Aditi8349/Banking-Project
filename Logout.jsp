<%@include file="DBCON.jsp"%>
<html>
    
    <body>
        <%
        session.invalidate();
        con.close();
        out.println("logout successfully..");
        %>
    </body>
    
</html>
