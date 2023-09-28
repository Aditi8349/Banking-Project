<!DOCTYPE html>
<html>

<head>
    <title>Bank Management System - Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #0074cc;
            color: #fff;
            padding: 20px;
            margin: 0;
        }

        h2 {
            margin: 10px 0;
        }

        .menu-table {
            width: 50%;
            border-collapse: collapse;
        }

        .menu-table td {
            padding: 10px;
            text-align: center;
        }

        .menu-table a {
            text-decoration: none;
            color: #0074cc;
            display: block;
            padding: 10px 20px;
            border: 1px solid #0074cc;
            margin: 5px;
            border-radius: 5px;
            background-color: #fff;
            transition: background-color 0.3s, color 0.3s;
        }

        .menu-table a:hover {
            background-color: #0074cc;
            color: #fff;
        }
    </style>
</head>

<body>
    <h1 align="center">Welcome <%=session.getAttribute("login_id")%> <%=session.getAttribute("Name")%> - Bank Management System</h1>
    <h2 align="center">Last Login Time: <%=session.getAttribute("login_time")%></h2>
    <table align="center" class="menu-table">
        <tr>
            <td>
                <a href="NewAccount.jsp">New Account</a>
                <a href="ViewCustomer.jsp">View Customer</a>
                <a href="DeleteCustomer.jsp">Delete Customer</a>
                <a href="UpdateCustomer$.jsp">Update Customer</a>
                <a href="ViewStatement.jsp">View Statement</a>
                <a href="UpdateStatement.jsp">Update Statement</a>
                <!--<a href="CancelStatement.jsp">Cancel Statement</a>-->
                <a href="FundTransfer.jsp">Fund Transfer</a>

            </td>
            <td>
                <a href="CashWithdaw.jsp">Cash Withdraw</a>
                <a href="CashDeposite.jsp">Cash Deposit</a>
                <a href="AdminChangePassword.jsp">Admin Change Password</a>
                <a href="ChangePassword.jsp">Customer Change Password</a>
                <a href="DeactivateAccount.jsp">Deactivate Customer Account</a>
                <a href="ResetPassword.jsp">Reset Password</a>
                <a href="Logout.jsp">Logout</a>
            </td>
        </tr>
    </table>
</body>

</html>
