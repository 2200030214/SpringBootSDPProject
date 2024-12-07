<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Citizen c=(Citizen)session.getAttribute("citizen");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
</head>
<body>
<body>
    <%@include file="citizennavbar.jsp" %>
    <h3 style="text-align: center;"><u>Citizen Update Profile Form</u></h3>
    <div class="form-container" style="text-align: center;">
        <form method="post" action="update">
        <label for="cname">ID</label>
            <input type="number" name="cid" class="form-control" value="<%=c.getId()%>" readonly required/>
            <br/>
            <label for="cname">Enter Name</label>
            <input type="text" id="cname" name="cname" class="form-control" value="<%=c.getName()%>" required/>
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
            <input type="email" id="cemail" name="cemail" class="form-control" value="<%=c.getEmail()%>" readonly required/>
            <br/><br/>
            
            <label for="cpwd">Enter Password</label>
            <input type="password" id="cpwd" name="cpwd" class="form-control" value="<%=c.getPassword()%>" required/>
            <br/><br/>
            
            <label for="clocation">Enter Location</label>
            <input type="text" id="clocation" name="clocation" class="form-control" value="<%=c.getLocation()%>" required/>
            <br/><br/>
            
            <label for="ccontact">Enter Contact</label>
            <input type="number" id="ccontact" name="ccontact" class="form-control" value="<%=c.getContact()%>" required/>
            <br/><br/>
            
            <input type="submit" value="Update" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-success"/>
        </form>
    </div>
</body>
</html>