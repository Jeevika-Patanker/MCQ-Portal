<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

	<!DOCTYPE html>
	<html>

	<head>

		<meta charset="ISO-8859-1">
		<title>Add Question</title>

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
				max-width: 700px;
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
			<h3>Add Exam Question</h3>
		</div>

		<div class="form-card">

			<h4 class="text-center mb-4">Create New Question</h4>

			<form action="oes.controller.QuestionInsert">

				<div class="form-group">

					<label>Question</label>

					<textarea name="Question" class="form-control" rows="3" placeholder="Enter exam question" required>
</textarea>

				</div>

				<div class="form-row">

					<div class="form-group col-md-6">
						<label>Option A</label>
						<input type="text" name="option1" class="form-control" required>
					</div>

					<div class="form-group col-md-6">
						<label>Option B</label>
						<input type="text" name="option2" class="form-control" required>
					</div>

					<div class="form-group col-md-6">
						<label>Option C</label>
						<input type="text" name="option3" class="form-control" required>
					</div>

					<div class="form-group col-md-6">
						<label>Option D</label>
						<input type="text" name="option4" class="form-control" required>
					</div>

				</div>

				<div class="form-group">

					<label>Correct Answer</label>

					<select name="answer" class="form-control">

						<option value="a">Option A</option>
						<option value="b">Option B</option>
						<option value="c">Option C</option>
						<option value="d">Option D</option>

					</select>

				</div>

				<div class="text-center mt-4">

					<button type="submit" class="btn btn-primary">
						Save Question
					</button>

					<button type="button" class="btn btn-success" onclick="location.href='AdminPanel.jsp'">
						Home
					</button>

					<button type="button" class="btn btn-danger" onclick="location.href='QuestionList.jsp'">
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