<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO,com.crud.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
h1, a{
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
text-align:center;
font-size:15px;
font-color:#505d66;
}

.write{

  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
text-align:right;
font-size:15px;
}

#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {

  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
  font-size:10px;
  }
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #505d66;
  color: white;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 100%;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
 
}

</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
</script>
</head>
<body>
<h1>독후감</h1>
<%
BoardDAO boardDAO = new BoardDAO(); //BoardDAO 객체 생성
	List<BoardVO> list = boardDAO.getBoardList(); // BoardDAO 객체 속 data 들을 list 변수에 담음
	request.setAttribute("list",list);
%>
<br/><a class="write" href="addpostform.jsp">독후감 쓰기</a>
<br/>
<div class="card">
<div class="container">
<table id="list" width="90%">
<tr>

	<th>제목</th>
	<th>지은이</th>
	<th>출판사</th>
	<th>서평</th>
	<th> </th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		
		<td>${u.getTitle()}</td>
		<td>${u.getAuthor()}</td>
		<td>${u.getPublish()}</td>
		<td>${u.getCom()}</td>
		<td><a href="editform.jsp?id=${u.getId()}">Edit</a> <%-- editform.jsp  --%>
		<a href="javascript:delete_ok('${u.getId()}')">Delete</a></td>
	</tr>
</c:forEach>

</table>
</div>
</div>

</body>
</html>