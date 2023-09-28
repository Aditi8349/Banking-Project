<%@include file="DBCON.jsp"%>
    <html>
       
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Customer Information</title>
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
        h1{
            font-family: serif;
        }
    </style>
</head>
       
    <body bgcolor="#E6E6FA">
        
        <%
            
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
               
                
               
          String customerprofilequery="select * from account where accno='"+session.getAttribute("login_id")+"'";
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
        <h1 align="center">Update Your Information</h1>
        <form action="Update2.jsp" method="post">
            <table bgcolor="#F8F6F0">
                <tr>
                    <td>Account Number</td>
                    <td><input type="text" name="acno" value="<%=acno%>" disabled=""></td>
                </tr>
                <tr>
                    <td>Customer Name</td>
                    <td><input type="text" name="cname" value="<%=cname%>"></td>
                </tr>
                <tr>
                    <td>Father Name</td>
                    <td><input type="text" name="cfname" value="<%=cfname%>"></td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td><input type="date" name="cdob" value="<%=cdob%>"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="text" name="cgender" value="<%=cgender%>"></td>
                </tr>
                <tr>
                    <td>Account Opening Date</td>
                    <td><input type="text" name="opdate" value="<%=opdate%>"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="cadd" value="<%=cadd%>"></td>
                </tr>
                <tr>
                    <td>Contact No.</td>
                    <td><input type="text" name="ccontact" value="<%=ccontact%>"></td>
                </tr>
                
                <tr>
                    <td>Role</td>
                    <td><input type="text" name="rrole" value="<%=role%>"></td>
                    
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password" value="<%=pass%>"></td>
                </tr>
                <tr>
                    <td>Security Question</td>
                    <td>
                        <select name="secques">
                            <option value="birthplace">Birth Place</option>
                            <option value="firstSchool">First School</option>
                            <option value="bestFriend">Best Friend</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                    <td>Security Answer</td> 
                    <td> <input type="text" name="sans" value="<%=sans%>"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="b1" value="Update"</td>
                   
                </tr>
        </form>
        </div> 
    
    </body>
</html>