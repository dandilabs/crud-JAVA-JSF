<%@page import="CRUD.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id_user=request.getParameter("id_user");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		
		Insert_Values obj_Insert_Values= new Insert_Values();
		obj_Insert_Values.insert_values(id_user,username, email, mobile);
				
	%>
	
<script type="text/javascript">
window.location.href="http://localhost:8080/JSF_Crud/insert_values.jsp"
</script>
</body>
</html>