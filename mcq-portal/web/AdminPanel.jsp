<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

  <% if(session.getAttribute("username")==null){ String msg2="Please Login as Admin to Continue" ;
    response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset=" ISO-8859-1">
    <title>Admin Dashboard</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <style>

      body {
        background: #f4f6f9;
        font-family: Arial;
      }


      .navbar {
        background: linear-gradient(90deg, #141e30, #243b55);
      }


      .welcome-card {
        margin-top: 30px;
        padding: 20px;
        background: white;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        text-align: center;
      }

      .admin-box {
        padding: 30px;
        border-radius: 12px;
        text-align: center;
        color: white;
        cursor: pointer;
        transition: 0.3s;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
      }

      .admin-box h4 {
        font-size: 22px;
        margin-bottom: 10px;
      }

      .admin-box p {
        font-size: 14px;
        opacity: 0.9;
      }


      .admin-box:hover {
        transform: translateY(-8px) scale(1.03);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
      }


      .students {
        background: linear-gradient(135deg, #667eea, #764ba2);
      }

      .instructions {
        background: linear-gradient(135deg, #11998e, #38ef7d);
      }

      .questions {
        background: linear-gradient(135deg, #f7971e, #ffd200);
      }

      .logout {
        background: linear-gradient(135deg, #ff416c, #ff4b2b);
      }
    </style>

    </head>

    <body>


      <nav class="navbar navbar-dark">

        <span class="navbar-brand">
          MCQ-Portal: Admin Panel
        </span>

        <span style="color:white;">
          Admin: <%= session.getAttribute("username") %>
        </span>

      </nav>

      <div class="container">


        <div class="welcome-card">

          <h3>
            Welcome Admin :
            <strong>
              <%= session.getAttribute("username") %>
            </strong>
          </h3>

        </div>

        <div class="row mt-5">

          <div class="col-md-3">
            <div class="admin-box students" onclick="location.href='StudentList.jsp'">
              <h4>Students</h4>
              <p>Add / Update Students</p>
            </div>
          </div>

          <div class="col-md-3">
            <div class="admin-box instructions" onclick="location.href='InstructionList.jsp'">
              <h4>Instructions</h4>
              <p>Manage Instructions</p>
            </div>
          </div>

          <div class="col-md-3">
            <div class="admin-box questions" onclick="location.href='QuestionList.jsp'">
              <h4> Questions</h4>
              <p>Add / Update Questions</p>
            </div>
          </div>

          <div class="col-md-3">
            <div class="admin-box logout" onclick="location.href='oes.controller.LogoutAdmin'">
              <h4>Logout</h4>
              <p>Sign Out</p>
            </div>
          </div>

        </div>


      </div>


      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </body>

    </html>