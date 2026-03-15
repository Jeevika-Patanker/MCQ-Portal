<%-- Document : StudentLogin --%>

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

		<!DOCTYPE html>
		<html>

		<head>

			<meta charset="ISO-8859-1">
			<title>Student Login</title>

			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

			<style>
				body {
					background-image: url("student.jpg");
					background-size: cover;
					background-position: center top;
					background-repeat: no-repeat;
					height: 90vh;
					display: flex;
					align-items: center;
					margin-left: 70px;

				}

				.login-card {
					background: rgba(248, 246, 246, 0.9);
					padding: 40px;
					width: 380px; 
					border-radius: 10px;
					box-shadow: 0 6px 20px rgba(0, 0, 0, 0.4);
				}

				.login-title {
					text-align: center;
					margin-bottom: 25px;
					color: #243b55;
				}
			</style>

		</head>

		<body>

			<div class="login-card">

				<h3 class="login-title">Student Login</h3>

				<div class="text-center">

					<span style="color:red">
						<% if(request.getParameter("msg") !=null) out.print(request.getParameter("msg")); %>
					</span>

					<br>

					<span style="color:green">
						<% if(request.getParameter("msg1") !=null) out.print(request.getParameter("msg1")); %>
					</span>

				</div>

				<form action="oes.controller.ValidateStudent" method="post">

					<div class="form-group">

						<label>User ID</label>

						<input type="text" name="uname" class="form-control" placeholder="Enter your ID" required>

					</div>

					<div class="form-group">

						<label>Password</label>

						<input type="password" name="pass" class="form-control" placeholder="Enter password" required>

					</div>

					<div class="text-center mt-4">

						<button type="submit" class="btn btn-primary btn-block">
							Login
						</button>

						<button type="button" class="btn btn-outline-secondary btn-block"
							onclick="location.href='index.html'">

							Exit

						</button>

					</div>

				</form>

			</div>

		</body>

		</html><%-- Document : StudentLogin --%>

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

		<!DOCTYPE html>
		<html>

		<head>

			<meta charset="ISO-8859-1">
			<title>Student Login</title>

			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

			<style>
				body {
					background-image: url("student.jpg");
					background-size: cover;
					background-position: center top;
					background-repeat: no-repeat;
					height: 90vh;
					display: flex;
					align-items: center;
					margin-left: 70px;

				}

				.login-card {
					background: rgba(248, 246, 246, 0.9);
					padding: 40px;
					width: 380px; 
					border-radius: 10px;
					box-shadow: 0 6px 20px rgba(0, 0, 0, 0.4);
				}

				.login-title {
					text-align: center;
					margin-bottom: 25px;
					color: #243b55;
				}
			</style>

		</head>

		<body>

			<div class="login-card">

				<h3 class="login-title">Student Login</h3>

				<div class="text-center">

					<span style="color:red">
						<% if(request.getParameter("msg") !=null) out.print(request.getParameter("msg")); %>
					</span>

					<br>

					<span style="color:green">
						<% if(request.getParameter("msg1") !=null) out.print(request.getParameter("msg1")); %>
					</span>

				</div>

				<form action="oes.controller.ValidateStudent" method="post">

					<div class="form-group">

						<label>User ID</label>

						<input type="text" name="uname" class="form-control" placeholder="Enter your ID" required>

					</div>

					<div class="form-group">

						<label>Password</label>

						<input type="password" name="pass" class="form-control" placeholder="Enter password" required>

					</div>

					<div class="text-center mt-4">

						<button type="submit" class="btn btn-primary btn-block">
							Login
						</button>

						<button type="button" class="btn btn-outline-secondary btn-block"
							onclick="location.href='index.html'">

							Exit

						</button>

					</div>

				</form>

			</div>

		</body>

		</html>