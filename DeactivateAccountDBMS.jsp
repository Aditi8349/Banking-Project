
<%@include file="DBCON.jsp"%>
<%@page import="java.util.Date" %>
<html>
    <body>
        <%
            String role=request.getParameter("role");
            String loginid = request.getParameter("LoginId");
            String password=request.getParameter("Loginpassword");
            
            
            session.setAttribute("login_id",loginid );
            session.setAttribute("login_time",new Date());
           
           
            
            
            
            try
            {
                String accno = request.getParameter("account_number");
                String Deactivate = request.getParameter("deactivate");
                String query = "update account set Status='"+Deactivate+"'where accno='"+accno+"'";
                PreparedStatement pst = con.prepareStatement( query);
                pst.executeUpdate();
                out.println("Account Deactivated...");
                out.println("<a href=Login.jsp> Now login again</a>");
            }
            catch(Exception e)
            {
               out.println(e); 
            }
                %>
    </body>
</html>