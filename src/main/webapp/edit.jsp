<%@page import="common.User_Bean"%>
<%@page import="CRUD.Edit_Values"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>EDIT - JSF</title>
</head>
<body>
	
	

	<div class="container-fluid" style="align-items: center;">
		<center>
			<div class="card mt-4" style="width: 18rem;">
				<h1>
					<a class="badge bg-success" style="pt-2 border-radius: 15px; font-size: 19px;" href="http://localhost:8080/JSF_Crud/insert_values.jsp">Back</a> 
					<span class="badge bg-primary" style="border-radius: 15px; font-size: 19px;">Edit </span>
				</h1>
				<div class="card-body">
				<%
					String id_user=(String)request.getParameter("id_user");
						
					Edit_Values obj_Edit_values = new Edit_Values();
					
					User_Bean obj_User_Bean = obj_Edit_values.get_value_of_user(id_user);
					%>
	
					<form action="controller/edit_controller.jsp" class="form-control">
						<div class="mb-2">
							<label for="inputUsername" class="form-label">No Pendaftaran</label>
							<input type="number" name="id_user" value="<%=id_user%>">
						</div>
						<div class="mb-2">
							<label for="inputUsername" class="form-label">Username</label>
							<input type="text" name="username" value="<%=obj_User_Bean.getUsername()%>" required>
						</div>
						<div class="mb-2">
							<label for="inputEmail" class="form-label">Email</label>
							<input type="email" name="email" value="<%=obj_User_Bean.getEmail()%>" required>
						</div>
						<div class="mb-2">
							<label for="inputMobile" class="form-label">Mobile</label>
							<input type="number" name="mobile" value="<%=obj_User_Bean.getMobile()%>" required>
						</div>
						<button type="submit" onclick="myFunction()" value="Edit" class="btn btn-warning">Save</button>
					</form>
				</div>
			</div>
		</center>
	</div>

<script type="text/javascript">
function myFunction() {
	alert("Data berhasil diedit");
}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>