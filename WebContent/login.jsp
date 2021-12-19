<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	
	<style>
	
	h1, a{
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
text-align:center;
font-size:15px;
font-color:#505d66;
}
	.card {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 100%;
   text-align: center;
   margin-top:150px;
   background-color: #ff9ea0;
   padding: 20px;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
 text-align: center;
}
	
	</style>
</head>
<body>
<div class="card">

	<h1>로그인</h1>
	<form action="http://localhost:8080/2021JSPCRUD/posts.jsp" method="POST">
	I D   <input type="text" name="id" placeholder="아이디를 입력하세요" 
                  maxlength=20 size=20 ><br/>
	PW <input type="password" name="password" maxlength=12 size=20>
	<P>
	<input type="submit" value="확인">
	</form>
	</div>
</body>
</html>

