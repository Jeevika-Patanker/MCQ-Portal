<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

	<%@page import="oes.model.InstructionsDao" %>
		<%@page import="oes.db.Instructions" %>
			<%@page import="java.util.ArrayList" %>

				<!DOCTYPE html>
				<html>

				<head>

					<meta charset="ISO-8859-1">
					<title>Update Instructions</title>

					<link rel="stylesheet"
						href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

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

						.container-box {
							width: 85%;
							margin: auto;
							margin-top: 30px;
							background: white;
							padding: 25px;
							border-radius: 10px;
							box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
						}

						table input {
							width: 100%;
							padding: 5px;
						}
					</style>

				</head>

				<body>

					<div class="header">
						<h3>Instruction Management</h3>
					</div>

					<div class="container-box">

						<h4 class="text-center mb-4">Update Instructions</h4>

						<table class="table table-bordered table-hover text-center">

							<thead class="thead-dark">
								<tr>
									<th>#</th>
									<th>Instruction</th>
									<th>Update</th>
									<th>Delete</th>
								</tr>
							</thead>

							<tbody>

								<% int i=1; ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();

									for(Instructions e : allinsts)
									{

									if(request.getParameter("inst")!=null &&
									request.getParameter("inst").equals(e.getInstruction()))
									{
									%>

									<tr class="table-warning">

										<form action="updateinstructionnow.jsp">

											<input type="hidden" name="instoriginal" value="<%=e.getInstruction()%>">

											<td>
												<%=i++%>
											</td>

											<td>
												<input type="text" class="form-control" name="instmodified"
													value="<%=e.getInstruction()%>">
											</td>

											<td>
												<button class="btn btn-success btn-sm">
													Update
												</button>
											</td>

											<td>
												<a class="btn btn-danger btn-sm"
													href="deleteinstruction.jsp?inst=<%=e.getInstruction()%>">
													Delete
												</a>
											</td>

										</form>

									</tr>

									<% } else { %>

										<tr>

											<td>
												<%=i++%>
											</td>

											<td class="text-left">
												<%=e.getInstruction()%>
											</td>

											<td>
												<a class="btn btn-primary btn-sm"
													href="updateinstruction.jsp?inst=<%=e.getInstruction()%>">
													Edit
												</a>
											</td>

											<td>
												<a class="btn btn-danger btn-sm"
													href="deleteinstruction.jsp?inst=<%=e.getInstruction()%>">
													Delete
												</a>
											</td>

										</tr>

										<% } } %>

							</tbody>

						</table>

						<div class="text-center mt-4">

							<button class="btn btn-success" onclick="location.href='AddInstruction.jsp'">
								Add Instruction
							</button>

							<button class="btn btn-secondary" onclick="location.href='AdminPanel.jsp'">
								Back to Panel
							</button>

						</div>

					</div>

				</body>

				</html>