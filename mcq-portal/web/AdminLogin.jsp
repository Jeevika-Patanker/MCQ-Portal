

<!DOCTYPE html>
<html>

<head>

	<title>Admin Login</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

	<style>
		body {
			height: 100vh;
			display: flex;
			justify-content: center;
			align-items: center;
			background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
				url('woodlib.jpg') no-repeat center center/cover;
			font-family: Arial;
		}


		.login-card {
			width: 350px;
			padding: 40px;
			border-radius: 10px;
			background: white;
			box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
		}


		.login-card h2 {
			text-align: center;
			margin-bottom: 30px;
			color: #333;
		}


		.btn-login {
			width: 100%;
		}


		.exit-btn {
			width: 100%;
			margin-top: 10px;
		}
	</style>

</head>

<body>

	<div class="login-card">

		<h2>Admin Login</h2>

		<!-- Error Message -->
		<div class="text-danger text-center">
			<% if(request.getParameter("msg2") !=null) out.print(request.getParameter("msg2")); %>
		</div>

		<!-- Success Message -->
		<div class="text-success text-center">
			<% if(request.getParameter("msg1") !=null) out.print(request.getParameter("msg1")); %>
		</div>

		<form action="oes.controller.ValidateAdmin" method="post">

			<div class="form-group">
				<label>Username</label>
				<input type="text" name="uname" class="form-control" required>
			</div>

			<div class="form-group">
				<label>Password</label>
				<input type="password" name="pass" class="form-control" required>
			</div>

			<button type="submit" class="btn btn-primary btn-login">
				Login
			</button>

			<button type="button" onclick="location.href='index.html'" class="btn btn-outline-secondary exit-btn">
				Exit
			</button>

		</form>

	</div>

</body>

</html>