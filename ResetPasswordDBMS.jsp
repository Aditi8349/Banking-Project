<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <%
            try
            {
                String accno = request.getParameter("Number");
                String newpass = request.getParameter("newPass");
                String cnfpass = request.getParameter("cnfpass");
               
                
                if(newpass.equals(cnfpass)){
                    
              String passwordUpdatequery =  "update account set password ='"+newpass+"' where accno='"+accno+"'";
                
                PreparedStatement pst1 = con.prepareStatement(passwordUpdatequery);
                
                pst1.executeUpdate();
                out.println("Password Update Successfully");
                
                }
                else
                {
                    out.println("Password Updation failed....NewPssword and Confirm Password didn't matched");
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
    
</html>
