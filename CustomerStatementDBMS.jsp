<%@include file="DBCON.jsp"%>
<html>

<head>
    <style>
        /* Define CSS styles for better presentation */
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Welcome <%=session.getAttribute("login_id")%></h1>
        <table>
            <tr>
                
                <th>From Account No.</th>
                <th>To Account No.</th>
                <th>Transaction Date</th>
                <th>Transaction ID</th>
                <th>Deposite Amount</th>
                <th>Withdraw Amount</th>
                <th>Net Balance</th>
            </tr>
            <%
                try {
                    String customeraccount = (String)session.getAttribute("login_id");
                    String customerstatementview = "SELECT * FROM " + customeraccount;
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(customerstatementview);

                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getInt(5) %></td>
                <td><%= rs.getInt(6) %></td>
                <td><%= rs.getInt(7) %></td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    out.println(e);
                }
            %>
        </table>
    </div>
</body>

</html>
