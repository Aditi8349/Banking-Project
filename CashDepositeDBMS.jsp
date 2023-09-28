
<%@include file="DBCON.jsp"%>
<html>
    
    <body>
        <%
            try
            {
                
           
                
                int lastBal = 0;
                String viewquerylast =  "select * from transactionBank";
                Statement stmt1 = con.createStatement();
                ResultSet rs2 = stmt1.executeQuery(viewquerylast);
                
                while(rs2.next()){
                    lastBal=rs2.getInt(7);
                }
                
               String accno=request.getParameter("accno");
               String refname=request.getParameter("ref");
               String dot =request.getParameter("dot");
               String trid=request.getParameter("trid");
               
               int depamount=Integer.parseInt(request.getParameter("depamt"));
               
               
            String query = "select * from account where accno='"+accno+"'";
            Statement stmt0 = con.createStatement();
            ResultSet rs0 = stmt0.executeQuery(query);
            
            String status="";
            while(rs0.next())
            {
              
                status=rs0.getString(13);
                
            }
            
               if(status.equals("Activate Account")){
               String depositequery = "insert into transactionBank values(?,?,?,?,?,?,?)"; 
               PreparedStatement pst1 = con.prepareStatement(depositequery);
               
               pst1.setString(1,accno);
               pst1.setString(2,refname);
               pst1.setString(3,dot);
               pst1.setString(4,trid);
               pst1.setInt(5,depamount);
               pst1.setInt(6,0);
               pst1.setInt(7,(lastBal+depamount));
               
               pst1.executeUpdate();
               out.println("Cash Deposited..");
               
               int lastbalcustomer = 0;
               String viewquerylastcustomer="select * from "+accno;
               String depositequerycustomer = "insert into "+ accno +" values(?,?,?,?,?,?,?);"; 
               PreparedStatement pst2 = con.prepareStatement(depositequerycustomer);
               
               pst2.setString(1,accno);
               pst2.setString(2,refname);
               pst2.setString(3,dot);
               pst2.setString(4,trid);
               pst2.setInt(5,depamount);
               pst2.setInt(6,0);
               pst2.setInt(7,(lastbalcustomer+depamount));
               
               pst2.executeUpdate();
               
        
               out.println("Transaction Cash Deposited..");
               
               
              int num = depamount;
              String arr[] = {"Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
              String[] tensArr = {"", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"};
              String[] teensArr = {"", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"};
              String[] thousandsArr = {"", "Thousand", "Lakh", "Crore", "Arab", "Kharab", "Neel", "Padma", "Shankh"};

              String amountInWords = "";
              
              int thousandsIndex = 0;

              if (num == 0) {
                  amountInWords = arr[0] + " Rupees";  // Zero case
              } else {
                  while (num > 0) {
                      int part = num % 100;
                      if (part != 0) {
                          String partInWords = "";
                          if (part >= 10 && part <= 19) {
                              partInWords += teensArr[part - 10] + " ";
                              part = 0;
                          } else {
                              partInWords += tensArr[part / 10] + " ";
                              part %= 10;
                          }
                          if (part > 0) {
                              partInWords += arr[part] + " ";
                          }

                          amountInWords = partInWords + thousandsArr[thousandsIndex] + " " + amountInWords;
                      }

                      thousandsIndex++;
                      num /= 100;
                  }
              }
              // Print the amount in words
              out.println(" <br><h1> Amount deposited</h1>");
              out.println(amountInWords.trim()+" Only");
               }
               else{
                   out.println("<h1>Transaction Failed.Account not Found</h1>");
               }
            }   
             
            catch(Exception e)
            {
                out.println("<h1>Transaction Failed...Cash Not Deposited..</h1>"+e);
                
            }
            
        %>
    </body>
</html>
