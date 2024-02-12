<%@page import="CRUD.Delete_Values"%>
<%@page import="CRUD.Edit_Values"%>
<%@page import="common.User_Bean"%>
<%@page import="CRUD.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE - JSF</title>
</head>
<body>
	<%
	String id_user=request.getParameter("id_user");
	 

	Delete_Values obj_Delete_values=new Delete_Values();

	obj_Delete_values.delete_value(id_user);
	%>
	
<script type="text/javascript">
window.location.href="http://localhost:8080/JSF_Crud/insert_values.jsp"
</script>
</body>
</html>