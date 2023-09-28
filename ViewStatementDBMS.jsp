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
           try
           {
           String choice=request.getParameter("choice");
           //out.println(choice);
           String StatementViewquery="";
           
           if(choice.equalsIgnoreCase("AccountNo"))
           {
              String accountNo =request.getParameter("cuschoice");
              StatementViewquery = "Select * from "+accountNo;
           }
           else
           {
               StatementViewquery="select * from transactionbank";
           }
           
           
           //String CustomerViewquery="select* from account";
           Statement stmt1 =con.createStatement();
           
           ResultSet rs1= stmt1.executeQuery(StatementViewquery);
           
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
                    <th>Reference</th>
                    <th>Date of Transfer</th>
                    <th>Transfer Id</th>
                    <th>Deposite Amount</th>
                    <th>Withdraw Amount</th>
                    <th>Net Balance</th>
                    
                </tr>
                <%
                do {
                    %>
                    <tr>
                        <td><%= rs1.getString(1) %></td>
                        <td><%= rs1.getString(2) %></td>
                        <td><%= rs1.getString(3) %></td>
                        <td><%= rs1.getString(4) %></td>
                        <td><%= rs1.getInt(5) %></td>
                        <td><%= rs1.getInt(6) %></td>
                        <td><%= rs1.getInt(7) %></td>
                       
                    </tr>
                    <%
                } while (rs1.next());
                %>
            </table>
        </div>
        <%
    }
       }
       catch(Exception e)
       {
           out.println("data not found.. "+e);
       }
        %>
    </body>
    
</html>
