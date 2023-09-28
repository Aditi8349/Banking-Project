<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>


<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Three Dot Menu</title>
  <link rel="stylesheet" href="styles.css"> <!-- Optional CSS for styling the menu -->
    </head>
    <body bgcolor="lightcyan">
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
        
        <div class="menu" onclick="toggleMenu()">
        <div class="dot"></div>
        <div class="dot"></div>
        <div class="dot"></div>
        <div id="menuOptions" class="menu-options">
         <a href="home.html">Home</a>
         <a href="#" onclick="logout()">Logout</a>
        </div>
        </div>

  <!-- Add your content here -->
  <h1>Welcome to the Website!</h1>

        <h1>
            <form action="CashDepositeDBMS.jsp" method="post">
                <table align="center">
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
                        <td> Deposite Amount</td>
                        <td><input type="text" name="depamt"</td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="b1" value="deposite"></td>
                        <td><input type="reset" name="b1" value="RESET"></td>
                    </tr>
                   
                    
                </table>
            </form>
        </h1>
       
    </body>
</html>
