<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    
}
body{
    background-color: rgb(22, 50, 92);
}
.login-container {
    background-color: #fff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
}

.login-form {
    display: flex;
    flex-direction: column;
    align-items: center;
    

}

h1 {
    margin-bottom: 20px;
    color: #333;
}

input[type="text"],
input[type="password"] {
    width: 90%;
    padding: 12px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    outline: none;
}
select{
    width: 95%;
    padding: 12px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    outline: none;
}
button {
    width: 95%;
    padding: 12px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
    transition: background-color 0.3s ease-in-out;
}

button:hover {
    background-color: #0056b3;
}

.signup-link {
    margin-top: 15px;
    text-align: center;
}

.signup-link a {
    color: #007bff;
    text-decoration: none;
}

.signup-link a:hover {
    text-decoration: underline;
}



    </style>
</head>
<body>
    <div class="login-container">
        <form action="Check.jsp" class="login-form" method="post">
            <h1>Login</h1>
            <select name="role" required>
                <option disabled selected value="">Select an option</option>
                 
                 <option value="admin">ADMIN</option>
                 <option value="customer">CUSTOMER</option>
            </select>

           
            <input type="text" name="LoginId" placeholder="LoginId" required>
            <input type="password" name="Loginpassword"  placeholder="Password" required>
            <button type="submit">Log In</button>
            <div class="signup-link">
                <p><a href="ForgetPassword.jsp">Forget Password?</a></p>
            </div>
        </form>
    </div>
</body>
</html>
