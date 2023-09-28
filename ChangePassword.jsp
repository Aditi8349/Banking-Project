<html>
    
    <body>
        Welcome <%=session.getAttribute("login_id")%> login page
        <br>
        <br>You can change your password please enter following detail's
        <br>
        <form action="ChangePasswordDBMS.jsp" method="post">
            Enter Old password <input type="text" name="oldpass"><br>
            Enter New password <input type="text" name="newpass"><br>
            Enter Confirm password <input type="text" name="cnpass"><br>
            
            <input type="submit" name="b1" value="Update">
        </form>
    </body>
    
</html>