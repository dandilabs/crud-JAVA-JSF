<%@page import="CRUD.Edit_Values"%>
<%@page import="common.User_Bean"%>
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
		
		User_Bean obj_User_Bean = new User_Bean();
		obj_User_Bean.setId_user(id_user);
		obj_User_Bean.setUsername(username);
		obj_User_Bean.setMobile(mobile);
		obj_User_Bean.setEmail(email);
		 
		Edit_Values obj_Edit_values = new Edit_Values();
		obj_Edit_values.edit_user(obj_User_Bean);
				
	%>
	
<script type="text/javascript">
window.location.href="http://localhost:8080/JSF_Crud/insert_values.jsp"
</script>
</body>
</html>