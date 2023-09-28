<%@include file="DBCON.jsp" %>
<html>
    <body>
        <%
            try
            {
                String AccountNo = request.getParameter("accountNo");
                String secanswer = request.getParameter("secans");
                String secquestion = request.getParameter("secques");
//              out.println(AccountNo+ " "+ secanswer);
                String answerQuery = "select * from account where accno='"+AccountNo+"'";
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(answerQuery);
                
                while(rs.next())
                {
                    if(AccountNo.equalsIgnoreCase(rs.getString(1)) && secanswer.equalsIgnoreCase(rs.getString(12)) && secquestion.equalsIgnoreCase(rs.getString(11)))
                    {
                        //out.println("Account Number and Security answer matched.....Now enter new password");
                        if(AccountNo.equals("A001"))
                        {
                            session.setAttribute("login_id", AccountNo);
                            out.println("This was your Password : "+rs.getString(10));
                            out.println("<a href='AdminLogin.jsp'> Go to Admin Login Page</a>");
                        }
                        else
                        {
                            session.setAttribute("login_id", AccountNo);
                            out.println("This was your Password : "+rs.getString(10));
                            out.println("<a href='CustomerLogin.jsp'> Go to Customer Login Page</a>");
                        }
                    }
                    else
                    {
                        out.println("try again... Enter correct Account Number, Security Question & Security Answer....");
                    }
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>