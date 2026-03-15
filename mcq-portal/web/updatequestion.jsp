<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

  <%@page import="oes.model.*" %>
    <%@page import="oes.db.*" %>
      <%@page import="java.util.ArrayList" %>

        <!DOCTYPE html>
        <html>

        <head>

          <meta charset="ISO-8859-1">
          <title>Update Questions</title>

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
              width: 95%;
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

            .question-col {
              max-width: 250px;
              word-wrap: break-word;
            }
          </style>

        </head>

        <body>

          <div class="header">
            <h3>Question Management</h3>
          </div>

          <div class="container-box">

            <h4 class="text-center mb-4">Update Questions</h4>

            <div class="table-responsive">

              <table class="table table-bordered table-hover text-center">

                <thead class="thead-dark">
                  <tr>
                    <th>#</th>
                    <th>Question</th>
                    <th>A</th>
                    <th>B</th>
                    <th>C</th>
                    <th>D</th>
                    <th>Answer</th>
                    <th>Update</th>
                    <th>Delete</th>
                  </tr>
                </thead>

                <tbody>

                  <% int i=1; ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();

                    for(Questions e : allQuestions)
                    {

                    if(request.getParameter("ques")!=null &&
                    request.getParameter("ques").equals(e.getQuestion()))
                    {
                    %>

                    <tr class="table-warning">

                      <form action="updatequestionnow.jsp">

                        <input type="hidden" name="quesoriginal" value="<%=e.getQuestion()%>">

                        <td>
                          <%=i++%>
                        </td>

                        <td>
                          <input class="form-control" type="text" name="quesmodified" value="<%=e.getQuestion()%>">
                        </td>

                        <td>
                          <input class="form-control" type="text" name="opta" value="<%=e.getA()%>">
                        </td>

                        <td>
                          <input class="form-control" type="text" name="optb" value="<%=e.getB()%>">
                        </td>

                        <td>
                          <input class="form-control" type="text" name="optc" value="<%=e.getC()%>">
                        </td>

                        <td>
                          <input class="form-control" type="text" name="optd" value="<%=e.getD()%>">
                        </td>

                        <td>
                          <input class="form-control" type="text" name="ans" value="<%=e.getAnswer()%>">
                        </td>

                        <td>
                          <button class="btn btn-success btn-sm">
                            Update
                          </button>
                        </td>

                        <td>
                          <a class="btn btn-danger btn-sm" href="deletequestion.jsp?ques=<%=e.getQuestion()%>">
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

                        <td class="question-col">
                          <%=e.getQuestion()%>
                        </td>

                        <td>
                          <%=e.getA()%>
                        </td>
                        <td>
                          <%=e.getB()%>
                        </td>
                        <td>
                          <%=e.getC()%>
                        </td>
                        <td>
                          <%=e.getD()%>
                        </td>

                        <td>
                          <span class="badge badge-success">
                            <%=e.getAnswer()%>
                          </span>
                        </td>

                        <td>
                          <a class="btn btn-primary btn-sm" href="updatequestion.jsp?ques=<%=e.getQuestion()%>">
                            Edit
                          </a>
                        </td>

                        <td>
                          <a class="btn btn-danger btn-sm" href="deletequestion.jsp?ques=<%=e.getQuestion()%>">
                            Delete
                          </a>
                        </td>

                      </tr>

                      <% } } %>

                </tbody>

              </table>

            </div>

            <div class="text-center mt-4">

              <button class="btn btn-success" onclick="location.href='AddQuestion.jsp'">
                Add Question
              </button>

              <button class="btn btn-secondary" onclick="location.href='AdminPanel.jsp'">
                Back to Panel
              </button>

            </div>

          </div>

        </body>

        </html>