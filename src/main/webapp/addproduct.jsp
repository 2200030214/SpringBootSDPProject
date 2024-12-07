<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="educatornavbar.jsp" %><br/><br/>
    <h3 align="center"><u>Add Product</u></h3>
        <form method="post" action="insertproduct" enctype="multipart/form-data">
            <label>Image Name</label>
            <input type="text"  name="pname" class="form-control" required/>
            <br/><br/>
            
            <label>Image history</label>
            <input type="number"  name="pcost" class="form-control"  step="0.01" required/>
            <br/><br/>
            
            <label>Image Description</label>
            <textarea name="pdescription" class="form-control" required></textarea>
            <br/><br/>
            
            <label>Image</label>
            <input type="file"  name="pimage" class="form-control" required/>
            <br/><br/>
            
            <input type="submit" value="Add" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-success"/>
        </form>
    </div>
</body>
</html>