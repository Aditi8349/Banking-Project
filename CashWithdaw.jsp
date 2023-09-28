<%@page import="java.util.Random"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
   
    <body bgcolor="YELLOW">
        <%! Random rndm;%>
        <%
            rndm=new Random();
            long ln = rndm.nextInt();
            long pos = Math.abs(ln);
            
        %>
        <%! Date dt; %>
        <%
           dt = new Date();
           SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-YYYY");
           String format = sdf.format(dt);
        %>
        <h1>
            <form action="CashWithdrawDBMS.jsp" method="post">
                <table align="center">
                    <caption alingn="center"><h1>Cash withdraw</h1></caption>
                    <tr>
                        <td>Account No</td>
                        <td><input type="text" name="accno" ></td>
                    </tr>
                    <tr>
                        <td>Reference</td>
                        <td><input type="text" name="ref" ></td>
                    </tr>
                    <tr>
                        <td>Date to transaction</td>
                        <td><input type="text" name="dot" value="<%=format%>"></td>
                    </tr>
                    <tr>
                        <td>Transaction ID</td>
                        <td><input type="text" name="trid" value="<%=pos%>"></td>
                    </tr>
                    <tr>
                        <td> Withdraw Amount</td>
                        <td><input type="text" name="wthamt"</td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="b1" value="withdraw"></td>
                        <td><input type="reset" name="b1" value="RESET"></td>
                    </tr>
                   
                    
                </table>
            </form>
        </h1>
       
    </body>
</html>
