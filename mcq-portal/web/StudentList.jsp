<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <%@page import="oes.model.*" %>
        <%@page import="oes.db.Students" %>
            <%@page import="java.util.ArrayList" %>

                <!DOCTYPE html>
                <html>

                <head>

                    <meta charset="ISO-8859-1">
                    <title>Student Management</title>

                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

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

                        .card-box {
                            background: white;
                            padding: 25px;
                            margin-top: 30px;
                            border-radius: 10px;
                            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
                        }

                        /* Table */

                        .table thead {
                            background: #343a40;
                            color: white;
                        }

                        /* Buttons */

                        .action-btn {
                            padding: 5px 12px;
                            border-radius: 5px;
                        }
                    </style>

                </head>

                <body>

                    <div class="header">
                        <h3>Student Management</h3>
                    </div>

                    <div class="container">

                        <div class="card-box">

                            <h4 class="mb-4 text-center">List of All Students</h4>

                            <table class="table table-bordered table-hover">

                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>User ID</th>
                                        <th>Name</th>
                                        <th>Password</th>
                                        <th>Update</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>

                                <tbody>

                                    <% int i=1; ArrayList<Students> allstudents = StudentsDao.getAllRecords();

                                        for(Students e : allstudents){
                                        %>

                                        <tr>

                                            <td>
                                                <%= i++ %>
                                            </td>

                                            <td>
                                                <%= e.getUsername() %>
                                            </td>

                                            <td>
                                                <%= e.getName() %>
                                            </td>

                                            <td>
                                                <%= e.getPassword() %>
                                            </td>

                                            <td>
                                                <a class="btn btn-warning btn-sm action-btn"
                                                    href="updatestudent.jsp?username=<%=e.getUsername()%>">
                                                    Update
                                                </a>
                                            </td>

                                            <td>
                                                <a class="btn btn-danger btn-sm action-btn"
                                                    href="deletestudent.jsp?username=<%=e.getUsername()%>">
                                                    Delete
                                                </a>
                                            </td>

                                        </tr>

                                        <% } %>

                                </tbody>

                            </table>

                            <div class="row mt-4">

                                <div class="col-md-6 text-center">

                                    <button class="btn btn-success" onclick="location.href='AddStudent.jsp'">
                                        Add Student
                                    </button>

                                </div>

                                <div class="col-md-6 text-center">

                                    <button class="btn btn-secondary" onclick="location.href='AdminPanel.jsp'">
                                        Back to Panel
                                    </button>

                                </div>

                            </div>

                        </div>

                    </div>

                </body>

                </html>