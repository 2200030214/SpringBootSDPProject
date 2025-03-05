<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Citizen Registration</title>
    <script>
        // JavaScript function to validate the contact number
        function validateContactNumber() {
            var contact = document.getElementById("ccontact").value;
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
    <h3 style="text-align: center;"><u>Citizen Registration Form</u></h3>
    <div class="form-container" style="text-align: center;">
        <form method="post" action="insertcitizen">
            <label for="cname">Enter Name</label>
            <input type="text" id="cname" name="cname" required/>
            <br/><br/>
            
            <label>Select Gender</label>
            <input type="radio" id="male" name="cgender" value="Male" required/>
            <label for="male">Male</label>
            <input type="radio" id="female" name="cgender" value="Female" required/>
            <label for="female">Female</label>
            <input type="radio" id="others" name="cgender" value="Others" required/>
            <label for="others">Others</label>
            <br/><br/>
            
            <label for="cdob">Select Date of Birth</label>
            <input type="date" id="cdob" name="cdob" class="form-control" required/>
            <br/><br/>
            
            <label for="cemail">Enter Email ID</label>
            <input type="email" id="cemail" name="cemail" class="form-control" required/>
            <br/><br/>
            
            <label for="cpwd">Enter Password</label>
            <input type="password" id="cpwd" name="cpwd" class="form-control" required/>
            <br/><br/>
            
            <label for="clocation">Enter Location</label>
            <input type="text" id="clocation" name="clocation" class="form-control" required/>
            <br/><br/>
            
            <label for="ccontact">Enter Contact</label>
            <input type="number" id="ccontact" name="ccontact" class="form-control" required/>
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
