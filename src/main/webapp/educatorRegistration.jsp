<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Educator Registration</title>
    <script>
        // JavaScript function to validate the contact number
        function validateContactNumber() {
            var contact = document.getElementById("econtact").value;
            var errorMessage = document.getElementById("contact-error");
            if (contact.length > 10) {
                errorMessage.style.display = "block"; // Display error message
                errorMessage.innerHTML = "Contact number should not exceed 10 digits.";
                return false;
            } else {
                errorMessage.style.display = "none"; // Hide error message
                return true;
            }
        }
    </script>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Educator Registration Form</u></h3>
    <div class="form-container" style="text-align: center;">
        <form method="post" action="inserteducator" >
            <label for="ename">Enter Name</label>
            <input type="text" id="ename" name="ename" required/>
            <br/><br/>
            
            <label>Select Gender</label>
            <input type="radio" id="male" name="egender" value="Male" required/>
            <label for="male">Male</label>
            <input type="radio" id="female" name="egender" value="Female" required/>
            <label for="female">Female</label>
            <input type="radio" id="others" name="egender" value="Others" required/>
            <label for="others">Others</label>
            <br/><br/>
            
            <label for="edob">Select Date of Birth</label>
            <input type="date" id="edob" name="edob" class="form-control" required/>
            <br/><br/>
            
            <label for="eemail">Enter Email ID</label>
            <input type="email" id="eemail" name="eemail" class="form-control" required/>
            <br/><br/>
            
            <label for="epwd">Enter Password</label>
            <input type="password" id="epwd" name="epwd" class="form-control" required/>
            <br/><br/>
            
            <label for="clocation">Enter Location</label>
            <input type="text" id="elocation" name="elocation" class="form-control" required/>
            <br/><br/>
            
            <label for="econtact">Enter Contact</label>
            <input type="text" id="econtact" name="econtact" class="form-control" required/>
            <br/>
            <!-- Error message for contact validation -->
            <span id="contact-error" style="color: red; display: none;"></span>
            <br/><br/>
            
            <input type="submit" value="Register" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-success"/>
        </form>
    </div>
</body>
</html>