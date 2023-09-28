<%@include file="DBCON.jsp" %>
<html>

    <body>
           <%
           try
           {
               
               String cname =request.getParameter("cname");
               String cfname =request.getParameter("cfname");
               String cdob =request.getParameter("cdob");
               String cgender =request.getParameter("cgender");
               String opdate =request.getParameter("opdate");
               String cadd=request.getParameter("cadd");
               String ccontact=request.getParameter("ccontact");
               String role= request.getParameter("rrole");
               String pass=request.getParameter("password");
               String sques=request.getParameter("secques");
               String sans =request.getParameter("sans");
               String status =request.getParameter("status");
               
               
               
               String getLastAccountQuery = "SELECT MAX(accno) FROM account";
                Statement getLastAccountStmt = con.createStatement();
                ResultSet rs = getLastAccountStmt.executeQuery(getLastAccountQuery);
                
                String lastAccountNumber = "C000"; 
                int nextAccountNumber = 1;
                
                if (rs.next() && rs.getString(1) != null) {
                    lastAccountNumber = rs.getString(1);
                    
                    nextAccountNumber = Integer.parseInt(lastAccountNumber.substring(1)) + 1;
                }
                
               
               String newAccountNumber = String.format("C%03d", nextAccountNumber);
               String accountinsertquery="insert into account values(?,?,?,?,?,?,?,?,?,?,?,?,?);";
               PreparedStatement pst1=con.prepareStatement(accountinsertquery);
               
               pst1.setString(1,newAccountNumber);
               pst1.setString(2,cname);
               pst1.setString(3,cfname);
               pst1.setString(4,cdob);
               pst1.setString(5,cgender);
               pst1.setString(6,opdate);
               pst1.setString(7,cadd);
               pst1.setInt(8,Integer.parseInt(ccontact));
               pst1.setString(9,role);
               pst1.setString(10,pass);
               pst1.setString(11,sques);
               pst1.setString(12,sans);
               pst1.setString(13,status);
               
               pst1.executeUpdate();
               out.println("<br>Account Created........");
               
               String customertable="create table "+newAccountNumber+"(accountno varchar(20),ref varchar(20),dotrans varchar(20),transid varchar(20),depamount int,wdrwamount int,netbal int);";
               PreparedStatement pst2=con.prepareStatement(customertable);
               pst2.executeUpdate();
               out.println("Customer transaction table created also..");
           }
           catch(Exception e)
           {
               out.println("not inserted...........Account not Created!!!!!!!"+e);
           }
            
           %>
       
    
    </body>
</html>