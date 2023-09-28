<%@include file="DBCON.jsp"%>
<!DOCTYPE html>
<html>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Your Information</title>
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Global styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f7f7;
            color: #333;
            text-align: left;
            margin: 0;
        }

        /* Form container */
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 10px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Form styles */
        h1 {
            
            color: #007bff;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            color: #555;
        }

        input[type="text"],
        input[type="date"],
        select,
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        select {
            appearance: none;
            background-color: #f7f7f7;
            color: #333;
            border: 1px solid #ccc;
            padding: 8px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 12px 16px;
            font-size: 16px;
            cursor: pointer;
        }

        /* Additional Styles */
        .container p {
            font-size: 16px;
        }
    </style>
</head>

<body>
    <%
            String accnum = request.getParameter("accno");
            session.setAttribute("accnno",accnum);
               String acno ="";
               String cname ="";
               String cfname ="";
               String cdob ="";
               String cgender ="";
               String opdate ="";
               String cadd="";
               String ccontact="";
               String role="";
               String pass="";
               String sques="";
               String sans ="";
               
                
               
          String customerprofilequery="select * from account where accno='"+session.getAttribute("accnno")+"'";
          Statement smt=con.createStatement();
          
          ResultSet rs= smt.executeQuery(customerprofilequery);
          
          while(rs.next())
          {
               acno=rs.getString(1);
               cname= rs.getString(2);
               cfname=rs.getString(3);
               cdob = rs.getString(4);
               cgender =rs.getString(5);
               opdate = rs.getString(6);
              cadd=rs.getString(7);
              ccontact=rs.getString(8);
              role=rs.getString(9);
              pass=rs.getString(10);
               sques=rs.getString(11);
               sans=rs.getString(12);
              out.println("<br>");
          }
               
        %>
    <div class="container">
        <h1 align="center">Update Customer Information</h1>

        <form action="UpdateCustomerDBMS.jsp" method="post">
            <label for="acno">Account Number</label>
            <input type="text" name="acno" id="acno" value="<%=acno%>" readonly>

            <label for="cname">Customer Name</label>
            <input type="text" name="cname" id="cname" value="<%=cname%>">

            <label for="cfname">Father Name</label>
            <input type="text" name="cfname" id="cfname" value="<%=cfname%>">

            <label for="cdob">DOB</label>
            <input type="date" name="cdob" id="cdob" value="<%=cdob%>">

            <label for="cgender">Gender</label>
            <input type="text" name="cgender" id="cgender" value="<%=cgender%>">

            <label for="opdate">Account Opening Date</label>
            <input type="date" name="opdate" id="opdate" value="<%=opdate%>">

            <label for="cadd">Address</label>
            <input type="text" name="cadd" id="cadd" value="<%=cadd%>">

            <label for="ccontact">Contact No.</label>
            <input type="text" name="ccontact" id="ccontact" value="<%=ccontact%>">

            <label for="rrole">Role</label>
            <input type="text" name="rrole" id="rrole" value="<%=role%>">

            <label for="password">Password</label>
            <input type="password" name="password" id="password" value="<%=pass%>">

            <label for="secques">Security Question</label>
            <select name="secques" id="secques">
                <option value="birthplace" <%=sques.equals("birthplace") ? "selected" : "" %>>Birth Place</option>
                <option value="firstSchool" <%=sques.equals("firstSchool") ? "selected" : "" %>>First School</option>
                <option value="bestFriend" <%=sques.equals("bestFriend") ? "selected" : "" %>>Best Friend</option>
            </select>

            <label for="sans">Security Answer</label>
            <input type="text" name="sans" id="sans" value="<%=sans%>">

            <input type="submit" name="b1" value="Update" >
        </form>
    </div>
</body>

</html>












































