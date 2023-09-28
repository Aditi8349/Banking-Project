<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@include file="DBCON.jsp"%>
<%@include file="ViewCustomer.jsp"%>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .error {
            color: red;
            font-weight: bold;
        }
    </style>
</head>

<body>
<%
try {
     
           String choice=request.getParameter("choice");
           //out.println(choice);
           String CustomerViewquery="";
           
           if(choice.equalsIgnoreCase("Customername"))
           {
               String cn=request.getParameter("Cuschoice");
               CustomerViewquery="select*from account where cusname='"+cn+"'";
           }
           else if(choice.equalsIgnoreCase("address"))
           {
               String cn=request.getParameter("Cuschoice");
               CustomerViewquery="select*from account where address='"+cn+"'";
           }
           else if(choice.equalsIgnoreCase("accno"))
           {
               String cn=request.getParameter("Cuschoice");
               CustomerViewquery="select*from account where accno='"+cn+"'";
           }
           else if(choice.equalsIgnoreCase("contact"))
           {
               String cn=request.getParameter("Cuschoice");
               CustomerViewquery="select*from account where contact='"+cn+"'";
           }
           else
           {
               CustomerViewquery="select * from account";
           }
           
           
           //String CustomerViewquery="select* from account";
           Statement stmt =con.createStatement();
           ResultSet rs1= stmt.executeQuery(CustomerViewquery);
           
           
    if (!rs1.next()) {
        %>
        <p class="error">No customer data found.</p>
        <%
    } else {
        %>
        <div class="container">
            <table>
                <tr>
                    <th>Account Number</th>
                    <th>Customer Name</th>
                    <th>Customer Father's Name</th>
                    <th>D.O.B</th>
                    <th>Gender</th>
                    <th>Account Opening Date</th>
                    <th>Address</th>
                    <th>Contact No</th>
                </tr>
                <%
                do {
                    %>
                    <tr>
                        <td><%= rs1.getString(1) %></td>
                        <td><%= rs1.getString(2) %></td>
                        <td><%= rs1.getString(3) %></td>
                        <td><%= rs1.getString(4) %></td>
                        <td><%= rs1.getString(5) %></td>
                        <td><%= rs1.getString(6) %></td>
                        <td><%= rs1.getString(7) %></td>
                        <td><%= rs1.getInt(8) %></td>
                    </tr>
                    <%
                } while (rs1.next());
                %>
            </table>
        </div>
        <%
    }
    
} catch (Exception e) {
    %>
    <p class="error">Data not found: <%= e.getMessage() %></p>
    <%
}
%>
</body>
</html>
 





































