<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

  <%@page import="oes.model.QuestionsDao" %>
    <%@page import="oes.db.*" %>
      <%@page import="java.util.ArrayList" %>

        <!DOCTYPE html>
        <html>

        <head>

          <meta charset="ISO-8859-1">
          <title>Exam Result</title>

          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

          <style>
            body {
              background: #f4f6f9;
              font-family: Arial;
            }

            .result-header {
              background: #243b55;
              color: white;
              padding: 15px;
              text-align: center;
            }

            .result-card {
              background: white;
              padding: 30px;
              margin-top: 40px;
              border-radius: 8px;
              box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            }

            .score {
              font-size: 28px;
              font-weight: bold;
              color: #28a745;
            }
          </style>

        </head>

        <body>

          <% String[] dbans=new String[100]; ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();

            int i = 0;
            int size = allQuestions.size();

            for(Questions e : allQuestions){
            dbans[i] = e.getAnswer();
            i++;
            }

            String[] userans = new String[100];

            for(int j=0;j<size;j++){ userans[j]=request.getParameter(Integer.toString(j)); } int correctanswer=0; int
              unattempted=0; int wronganswer=0; for(int k=0;k<size;k++){ if(userans[k].equalsIgnoreCase(dbans[k])){
              correctanswer++; } else if(userans[k].equals("e")){ unattempted++; } else{ wronganswer++; } } int
              attempted=size - unattempted; %>

              <div class="result-header">
                <h3>Exam Result</h3>
              </div>

              <div class="container">

                <div class="result-card">

                  <h5 class="text-center mb-4">
                    Name: <%=session.getAttribute("name")%> |
                      User ID: <%=session.getAttribute("username")%>
                  </h5>

                  <table class="table table-bordered">

                    <tr>
                      <th>Total Questions</th>
                      <td>
                        <%=size%>
                      </td>
                    </tr>

                    <tr>
                      <th>Attempted</th>
                      <td>
                        <%=attempted%>
                      </td>
                    </tr>

                    <tr>
                      <th>Correct Answers</th>
                      <td class="text-success"><b>
                          <%=correctanswer%>
                        </b></td>
                    </tr>

                    <tr>
                      <th>Wrong Answers</th>
                      <td class="text-danger"><b>
                          <%=wronganswer%>
                        </b></td>
                    </tr>

                  </table>

                  <div class="text-center mt-4">

                    <div class="score">
                      Score: <%=correctanswer%> / <%=size%>
                    </div>

                    <br>

                    <button class="btn btn-danger btn-lg" onclick="location.href='oes.controller.LogoutStudent'">

                      Logout

                    </button>

                  </div>

                </div>

              </div>

        </body>

        </html>