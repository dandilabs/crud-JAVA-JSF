<%@page import="java.util.Iterator"%>
<%@page import="common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.Read_Values"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>CRUD - JSF</title>
</head>
<body>
	<div class="container" style="align-items: center;">
		<center>
		<div class="card border-primary mt-4" style="width: 18rem;">
			<div class="card-header"><strong>Pendaftaran</strong></div>
		<h1><span class="badge bg-primary" style="border-radius: 15px; font-size: 19px;">Add </span></h1>
			<div class="card-body"> 
				<form action="controller/insert_controller.jsp" class="form-control">
				<div class="mb-2">
				<label for="inputUsername" class="form-label">No Pendaftaran</label>
				<input type="number" name="id_user" >
			</div>
			<div class="mb-2">
				<label for="inputUsername" class="form-label">Username</label>
				<input type="text" name="username" required>
			</div>
			<div class="mb-2">
				<label for="inputEmail" class="form-label">Email</label>
				<input type="email" name="email" required>
			</div>
			<div class="mb-2">
				<label for="inputMobile" class="form-label">Mobile</label>
				<input type="number" name="mobile" required>
			</div>
				<button type="submit" onclick="myFunction()" value="Insert" class="btn btn-warning">Save</button>
				</form>
			</div>
		</div>
		<hr>
		
		<%
			Read_Values obj_Read_Values=new Read_Values();
			List<User_Bean> list=obj_Read_Values.get_values();
			Iterator<User_Bean> it_list=list.iterator();
			%>
			<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<td>No Daftar</td>
					<td>Username</td>
					<td>Email</td>
					<td>Mobile</td>
					<td style="text-align:center">Action</td>
				</tr>
  			</thead>
			<%
			while(it_list.hasNext()){
			User_Bean obj_User_Bean=new User_Bean();
			obj_User_Bean=it_list.next();
			%>
			<tr>
				<td><%=obj_User_Bean.getId_user()%></td>
				<td><%=obj_User_Bean.getUsername() %></td>
				<td><%=obj_User_Bean.getEmail() %></td>
				<td><%=obj_User_Bean.getMobile() %></td>
				<td style="text-align:center">
				<a class="btn btn-sm btn-primary" href="edit.jsp?id_user=<%=obj_User_Bean.getId_user()%>">Edit</a>
				<a onclick="myDelete()" class="btn btn-sm btn-danger" href="controller/delete_controller.jsp?id_user=<%=obj_User_Bean.getId_user()%>">Delete</a>
				</td>
			</tr>
			<%
			}
			%>
			</table>
		
		
	</center>
	</div>
		<script type="text/javascript">
		function myFunction() {
			alert("Data berhasil disimpan");
				}
		</script>
		<script type="text/javascript">
		function myDelete() {
			alert("Data berhasil dihapus");
				}
		</script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>