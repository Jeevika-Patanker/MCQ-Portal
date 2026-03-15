<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

	<!DOCTYPE html>
	<html>

	<head>

		<meta charset="ISO-8859-1">
		<title>Add Instruction</title>

		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

		<style>
			body {
				background: #f4f6f9;
				font-family: Arial;
			}

			.header {
				background: linear-gradient(90deg, #141e30, #243b55);
				color: white;
				padding: 15px;
				text-align: center;
			}

			.form-card {
				max-width: 600px;
				margin: 40px auto;
				background: white;
				padding: 30px;
				border-radius: 10px;
				box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
			}
		</style>

	</head>

	<body>

		<div class="header">
			<h3>Add Exam Instruction</h3>
		</div>

		<div class="form-card">

			<h4 class="text-center mb-4">Enter Instruction</h4>

			<form action="oes.controller.InstructionInsert">

				<div class="form-group">

					<label>Instruction</label>

					<input type="text" name="inst" class="form-control" placeholder="Enter exam instruction" required>

				</div>

				<div class="text-center mt-4">

					<button type="submit" class="btn btn-primary">
						Add Instruction
					</button>

					<button type="button" class="btn btn-success" onclick="location.href='AdminPanel.jsp'">
						Home
					</button>

					<button type="button" class="btn btn-danger" onclick="location.href='InstructionList.jsp'">
						Back
					</button>

				</div>

			</form>

			<div class="text-center mt-3">

				<span style="color:red">
					<% if(request.getParameter("msg2") !=null) out.print(request.getParameter("msg2")); %>
				</span>

				<br>

				<span style="color:green">
					<% if(request.getParameter("msg1") !=null) out.print(request.getParameter("msg1")); %>
				</span>

			</div>

		</div>

	</body>

	</html>