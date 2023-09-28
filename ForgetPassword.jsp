
<html>
    
    <body>
     <h2>Enter the following details to move further....</h2>
     <form action="ForgetPasswordDBMS.jsp" method="post">
<table>
   <tr>
    <td>Enter the account Number:</td>
    <td><input type="text" name="accountNo"></td>
   </tr>
   
    <tr>
       <td>Enter the Security Question that you answered while creating the account:</td> 
      
                    <td>
                        <select name="secques">
                            <option value="birthplace">Birth Place</option>
                            <option value="firstSchool">First School</option>
                            <option value="bestFriend">Best Friend</option>
                        </select>
                    </td>
    </tr>

    <tr>
       <td>Enter the Security Answer that you entered while creating the account:</td>
       <td><input type="text" name="secans"></td>
   </tr>
</table>
<input type="submit" name="b1" value="Next">
</form>
    </body>
    
</html>
