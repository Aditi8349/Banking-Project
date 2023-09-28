<%@include file="DBCON.jsp"%>
<%@page import="java.util.Date"%>
<html>
    <h1> Welcome <%=session.getAttribute("login_id")%> customer Login Page....</h1>
     
    <body>
        <%
            
           
            
             
            String role=request.getParameter("role");
            String loginid = request.getParameter("LoginId");
            String password=request.getParameter("Loginpassword");
            
            
            session.setAttribute("login_id",loginid );
            session.setAttribute("login_time",new Date());
           
           
            
            
            
            try
            {
               
            String query = "select * from account where accno='"+loginid+"'";
            Statement stmt0 = con.createStatement();
            ResultSet rs0 = stmt0.executeQuery(query);
            String Name="";
            String status="";
            while(rs0.next())
            {
                Name = rs0.getString(2);
                status=rs0.getString(13);
                
            }
            session.setAttribute("Name", Name);
            
            
            
               String viewaccountquery ="select * from account";
                Statement stmt = con.createStatement();
                ResultSet rs1= stmt.executeQuery(viewaccountquery);
                int count = 0;
       
                
                while(rs1.next()){
                        
//                    out.println(" "+rs1.getString(9));
//                    out.println(" "+rs1.getString(10));
//                    out.println("<br>");
                    if(status.equals("Activate Account") && role.equalsIgnoreCase(rs1.getString(9)) && loginid.equalsIgnoreCase(rs1.getString(1)) && password.equalsIgnoreCase(rs1.getString(10)))
                    {   
                        count++;
                        break;
                    }
                }
             
                 if(count>0)
                 {
                    if(loginid.equals("A001"))
                    {
                        response.sendRedirect("AdminLogin.jsp");
                    }
                    else
                    {
                       response.sendRedirect("CustomerLogin.jsp");
                    }
                 }
                 else
                 {
                     RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
                     dis.include(request, response);
                     out.println("<br>Login Failed...");
                 }
                 
            }
            
            catch(Exception e)
            {
                out.println("no"+e);
            }
            
        %>
    </body>
    
</html>
