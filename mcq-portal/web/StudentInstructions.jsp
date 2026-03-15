<%@page import="oes.model.StudentsDao" %>
  <%@page import="oes.model.InstructionsDao" %>
    <%@page import="oes.db.Instructions" %>
      <%@page import="java.util.ArrayList" %>

        <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

          <!DOCTYPE html>
          <html>

          <head>

            <meta charset="ISO-8859-1">
            <title>Exam Instructions</title>

            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

            <style>
              body {
                background: #f4f6f9;
                font-family: Arial;
              }

              .header {
                background: #243b55;
                color: white;
                padding: 15px;
                text-align: center;
              }

              .card {
                margin-top: 40px;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
              }
            </style>

          </head>

          <body>

            <% String name=StudentsDao.getStudentName(session.getAttribute("username").toString()); %>

              <div class="header">
                <h3>Welcome, <%=name%>
                </h3>
              </div>

              <div class="container">

                <div class="card">

                  <div class="card-header bg-danger text-white">
                    <h5 class="mb-0">Instructions for the Exam</h5>
                  </div>

                  <div class="card-body">

                    <table class="table table-bordered">

                      <thead class="thead-light">
                        <tr>
                          <th>#</th>
                          <th>Instruction</th>
                        </tr>
                      </thead>

                      <tbody>

                        <% int i=1; ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();

                          for(Instructions e : allinsts){
                          %>

                          <tr>
                            <td>
                              <%=i++%>
                            </td>
                            <td>
                              <%=e.getInstruction()%>
                            </td>
                          </tr>

                          <% } %>

                      </tbody>

                    </table>

                    <div class="text-center mt-4">

                      <button class="btn btn-success btn-lg" onclick="location.href='Exam.jsp'">
                        Start Test
                      </button>

                      <button class="btn btn-danger btn-lg" onclick="location.href='oes.controller.LogoutStudent'">
                        Logout
                      </button>

                    </div>

                  </div>

                </div>

              </div>

          </body>

          </html>