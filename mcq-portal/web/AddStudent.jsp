<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

	<!DOCTYPE html>
	<html>

	<head>

		<meta charset="ISO-8859-1">
		<title>Add Student</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

		<style>
			body {
				background: #f4f6f9;
				font-family: Arial;
			}

			/* Header */

			.header {
				background: linear-gradient(90deg, #141e30, #243b55);
				color: white;
				padding: 15px;
				text-align: center;
			}

			/* Card */

			.form-card {
				max-width: 500px;
				margin: 40px auto;
				padding: 30px;
				background: white;
				border-radius: 10px;
				box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
			}
		</style>

	</head>

	<body>

		<div class="header">
			<h3>Add Student</h3>
		</div>

		<div class="form-card">

			<h4 class="text-center mb-4">Enter Student Details</h4>

			<form action="oes.controller.StudentInsert">

				<div class="form-group">
					<label>Name</label>
					<input type="text" name="name" class="form-control" required>
				</div>

				<div class="form-group">
					<label>User ID</label>
					<input type="text" name="uname" class="form-control" required>
				</div>

				<div class="form-group">
					<label>Password</label>
					<input type="password" name="pass" class="form-control" required>
				</div>

				<div class="text-center mt-4">

					<button type="submit" class="btn btn-primary">
						Register
					</button>

					<button type="button" onclick="location.href='AdminPanel.jsp'" class="btn btn-success">
						Home
					</button>

					<button type="button" onclick="location.href='StudentList.jsp'" class="btn btn-danger">
						Back
					</button>

				</div>

			</form>

			<div class="text-center mt-3">

				<span style="color:red">
					<% if(request.getParameter("msg2")!=null) out.print(request.getParameter("msg2")); %>
				</span>

				<br>

				<span style="color:green">
					<% if(request.getParameter("msg1")!=null) out.print(request.getParameter("msg1")); %>
				</span>

			</div>

		</div>

	</body>

	</html>