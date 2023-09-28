<%@include file="DBCON.jsp"%>
<html>
    
    <body>
        Welcome <%=session.getAttribute("login_id")%> login page
        <%
        String oldpassword = request.getParameter("oldpass");
        String newpassword = request.getParameter("newpass");
        String confirmpassword = request.getParameter("cnpass");
        
        out.println(oldpassword);
        out.println(newpassword );
        out.println(confirmpassword);
        
        try
        {
        String paschangequery = "select * from account where accno='"+session.getAttribute("login_id")+"'";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(paschangequery); 
        int count=0;
        while(rs.next())
        {
            if(oldpassword.equals(rs.getString(10))){
                count ++;
                break;
                
            }
        }
        if(count>0)
        {
            out.println("old password match..<br>");
            
        if(newpassword.equals(confirmpassword))
        {
             String updatepasswordQuery ="Update account set password='"+ newpassword +"'where accno='"+session.getAttribute("login_id")+"'";
             PreparedStatement pst = con.prepareStatement( updatepasswordQuery );
             pst.executeUpdate();
             out.println("Password Updated");
             out.println("<a href=Login.jsp> Now login again</a>");
            
         }
         else
         {
             out.println("Both r not same..");
         }
       }
            else
            {
                out.println("Both r  same.."); 
            }
             out.println(" ");
           
        }
        
        
        
        catch(Exception e)
        {
           out.println(e); 
        }
        %>
    </body>
    
</html>
