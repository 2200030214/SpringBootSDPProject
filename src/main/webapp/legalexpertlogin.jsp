<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
    <title>Legal Expert Login</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
    <h3 align="center"><u>Login as Legal Expert</u></h3>
    <div class="form-container">
    <form action="checkLegalExpertLogin" method="post">
        <label>Email:</label>
        <input type="email" name="lemail" required /><br>
        
        <label>Password:</label>
        <input type="password" name="lpwd"/><br/>
        
        <input type="submit" value="submit" class="btn btn-success" /> 
         <input type="reset" value="clear"  class="btn btn-success"/>
    </form>
    <p style="color:red;">${message}</p>
    </div>
    
    
</body>
</html>
