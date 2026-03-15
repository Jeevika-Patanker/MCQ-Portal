<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

  <%@page import="oes.model.StudentsDao" %>
    <%@page import="oes.db.Students" %>
      <%@page import="java.util.ArrayList" %>

        <!DOCTYPE html>
        <html>

        <head>

          <meta charset="ISO-8859-1">
          <title>Update Student</title>

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

            .container-box {
              width: 90%;
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
            <h3>Student Management</h3>
          </div>

          <div class="container-box">

            <h4 class="mb-3 text-center">Update Student Records</h4>

            <table class="table table-bordered table-hover text-center">

              <thead class="thead-dark">
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

                  for(Students e : allstudents)
                  {

                  if(request.getParameter("username")!=null &&
                  request.getParameter("username").equals(e.getUsername()))
                  {
                  %>

                  <tr class="table-warning">

                    <form action="updatestudentnow.jsp">

                      <input type="hidden" name="usernameoriginal" value="<%=e.getUsername()%>">

                      <td>
                        <%=i++%>
                      </td>

                      <td>
                        <input type="text" class="form-control" name="uname" value="<%=e.getUsername()%>">
                      </td>

                      <td>
                        <input type="text" class="form-control" name="name" value="<%=e.getName()%>">
                      </td>

                      <td>
                        <input type="text" class="form-control" name="pass" value="<%=e.getPassword()%>">
                      </td>

                      <td>
                        <button class="btn btn-success btn-sm">Update</button>
                      </td>

                      <td>
                        <a class="btn btn-danger btn-sm" href="deletestudent.jsp?username=<%=e.getUsername()%>">
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
                      <td>
                        <%=e.getUsername()%>
                      </td>
                      <td>
                        <%=e.getName()%>
                      </td>
                      <td>
                        <%=e.getPassword()%>
                      </td>

                      <td>
                        <a class="btn btn-primary btn-sm" href="updatestudent.jsp?username=<%=e.getUsername()%>">
                          Edit
                        </a>
                      </td>

                      <td>
                        <a class="btn btn-danger btn-sm" href="deletestudent.jsp?username=<%=e.getUsername()%>">
                          Delete
                        </a>
                      </td>

                    </tr>

                    <% } } %>

              </tbody>

            </table>

            <div class="text-center mt-4">

              <button class="btn btn-success" onclick="location.href='AddStudent.jsp'">
                Add Student
              </button>

              <button class="btn btn-secondary" onclick="location.href='AdminPanel.jsp'">
                Back to Panel
              </button>

            </div>

          </div>

        </body>

        </html>