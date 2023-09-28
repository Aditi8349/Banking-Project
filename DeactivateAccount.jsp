<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deactivate Account</title>
</head>
<body>
    <h1>Deactivate Account</h1>
    <form action="DeactivateAccountDBMS.jsp" method="post">
        <label for="account_number">Account Number:</label>
        <input type="text" name="account_number" id="account_number" required><br>
        Type Deactivate<input type="text" name="deactivate"><br>
        <input type="submit" name="deactivate" value="Deactivate">
        
    </form>
</body>
</html>
  




