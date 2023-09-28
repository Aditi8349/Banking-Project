
<%@include file="DBCON.jsp" %>
<html>
    <body>
        <h1> Welcome <%= session.getAttribute("login_id")%></h1>
        <%
            try
            {
                String accno = request.getParameter("accno");
                out.println(accno);
                String refname = request.getParameter("refname");
                out.println(refname);
                
                int lastBal = 0;
                String ViewLastQuery = "select * from "+refname+"";
                Statement stmt = con.createStatement();
                ResultSet rs2 = stmt.executeQuery(ViewLastQuery);
                
                while(rs2.next())
                {
                    lastBal = rs2.getInt(7);
                }
                
            String query = "select * from account where accno='"+accno+"'";
            Statement stmt0 = con.createStatement();
            ResultSet rs0 = stmt0.executeQuery(query);
            
            String status="";
            while(rs0.next())
            {
              
                status=rs0.getString(13);
                
            }
            
               
                
                String dot = request.getParameter("dot");
                String trid = request.getParameter("trid");
                int transferamount = Integer.parseInt(request.getParameter("transamount"));
                
                if(status.equals("Activate Account")){
                String depositQuery = "insert into "+refname+" values(?,?,?,?,?,?,?)";
                PreparedStatement pst1 = con.prepareStatement(depositQuery);
                
                pst1.setString(1, refname);
                pst1.setString(2, accno);
                pst1.setString(3, dot);
                pst1.setString(4, trid);
                pst1.setInt(5, 0);
                pst1.setInt(6, transferamount);
                pst1.setInt(7,(lastBal-transferamount));
                pst1.executeUpdate();
                out.println("Cash Transfer from "+refname+" successfull.....: <br>");
                
                //-----------------------------for customer-----------------------//
                int lastbalcustomer = 0;
                String ViewLastQueryCustomer = "select * from "+accno;
                Statement stmt2 = con.createStatement();
                ResultSet rs3 = stmt.executeQuery(ViewLastQueryCustomer);
                
                while(rs3.next())
                {
                    lastbalcustomer = rs3.getInt(7);
                }
                
                String depositQuerycustomer= "insert into "+accno+" values(?,?,?,?,?,?,?)";
                PreparedStatement pst2 = con.prepareStatement(depositQuerycustomer);
                
                pst2.setString(1, accno);
                pst2.setString(2, refname);
                pst2.setString(3, dot);
                pst2.setString(4, trid);
                pst2.setInt(5, transferamount);
                pst2.setInt(6, 0);
                pst2.setInt(7,(lastbalcustomer + transferamount));
                pst2.executeUpdate();
                 out.println("Cash transfer to the account no "+accno+" is done Successfully.....:<br>"
                         + "");
                }
                else{
                   out.println("Cash Not transfer Account Not Found"); 
                }
            }
            catch(Exception e)
            {
                out.println(e+"Transaction failed.....:(");
            }
        %>
    </body>
</html>