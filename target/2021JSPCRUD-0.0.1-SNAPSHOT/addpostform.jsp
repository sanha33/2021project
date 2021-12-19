<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
background-color: #e0e0e0;
  width: 80%;
  padding: 15px;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
 
}

</style>
</head>
<body>

<h1>New BOOK</h1>
<form action="addpost.jsp" method="post">
<div class="card">
<table>
<div class="container">
<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
<tr><td>Author:</td><td><input type="text" name="author"/></td></tr>
<tr><td>Publish:</td><td><input type="text" name="publish"/></td></tr>
<tr><td>Comment:</td><td><textarea cols="50" rows="5" name="com"></textarea></td></tr>
<tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</div>
</table>
</div>
</form>

</body>
</html>