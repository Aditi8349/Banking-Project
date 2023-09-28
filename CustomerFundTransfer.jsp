<%@page import="java.util.Random"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
   
    
<body>
   <%!Random rndm;%>
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
    <h1> Welcome <%= session.getAttribute("login_id")%> <%= session.getAttribute("Name") %> </h1>
    <h1>Customer Fund Transfer to the other Account</h1>
    <form action="CustomerFundTransferDBMS.jsp" method="post">
        <table>
            <tr>
                <td>Account Number</td>
                <td><input type="text" name="accno" placeholder="To Account"></td>
            </tr>
            <tr>
                <td>Reference</td>
                <td><input type="text" name="refname" placeholder="From Account"></td>
            </tr>
            <tr>
                <td>Date of Transaction</td>
                <td><input type="date" name="dot" value="<%=format%>"></td>
            </tr>
            <tr>
                <td>Transaction ID</td>
                <td><input type="text" name="trid" value="<%=rndm.nextInt()%>"></td>
            </tr>
            <tr>
                <td>Transfer Amount</td>
                <td><input type="text" name="transamount"></td>
            </tr>
            <tr>
                <td><input type="submit" name="b1" value="Transfer"></td>
                <td><input type="reset"  name="b2" value="reset"></td>
            </tr>
        </table>
    </form>
</body>
</html>