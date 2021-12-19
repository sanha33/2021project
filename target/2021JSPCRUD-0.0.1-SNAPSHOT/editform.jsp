<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.dao.BoardDAO,com.crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<style>
h1,div {
	text-align: center;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
background-color: #e0e0e0;
  width: 80%;
  padding: 15px;
  text-align: center;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
 
}


</style>
</head>
<body>

<%
BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>
<div class="card">

<h1>Edit BOOK</h1>

<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getId() %>"/>
<table>
<div class="container">
<tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
<tr><td>Author:</td><td><input type="text" name="author" value="<%= u.getAuthor()%>" /></td></tr>
<tr><td>Publish:</td><td><input type="text" name="publish" value="<%= u.getPublish()%>" /></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="com"><%= u.getCom()%></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</div>
</table>
</form>
</div>
</body>

</html>
