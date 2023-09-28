

<%@page import= "java.sql.*"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%! Connection con=null; %>
       <%
           
           try
           {
              Class.forName("com.mysql.jdbc.Driver");
              String connectionURL ="jdbc:mysql://localhost:3306/globalbankingdb";
              String dbuser = "root";
              String dbpass="12345";
              
              con=DriverManager.getConnection(connectionURL,dbuser,dbpass);
              //out.println("Connection succcess..<br>");
           }
           catch(Exception e)
           {
               out.println("Connection Failed.");
           }
       %>
    </body>
</html>
