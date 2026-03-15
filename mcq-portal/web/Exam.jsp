<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <%@page import="oes.model.QuestionsDao" %>
        <%@page import="oes.db.*" %>
            <%@ page import="java.util.*" %>

                <!DOCTYPE html>
                <html>

                <head>

                    <title>Online Examination</title>

                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

                    <style>
                        body {
                            background: #f4f6f9;
                            font-family: Arial;
                        }

                        .exam-header {
                            background: #243b55;
                            color: white;
                            padding: 15px;
                            text-align: center;
                        }

                        .timer-box {
                            font-size: 20px;
                            font-weight: bold;
                            color: red;
                        }

                        .question-card {
                            background: white;
                            padding: 20px;
                            margin-bottom: 20px;
                            border-radius: 8px;
                            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                        }
                    </style>

                    <script>

<%
                            String clock = request.getParameter("clock");
                        if (clock == null)
                            clock = "60";
%>

var timeout = <%=clock%>;

                        function timer() {

                            if (timeout > 0) {

                                timeout--;
                                document.getElementById("clock").value = timeout;
                                setTimeout(timer, 1000);

                            }
                            else {

                                document.getElementById("clock").value = "Time Over";
                                document.formb.submit();

                            }

                        }

                    </script>

                </head>

                <body onload="timer()">

                    <div class="exam-header">
                        <h3>Online Examination</h3>
                    </div>

                    <div class="container mt-4">

                        <div class="text-right mb-3">

                            <span class="timer-box">
                                Time Left:
                                <input type="text" id="clock" value="<%=clock%>" size="2" readonly>
                            </span>

                        </div>

                        <form action="Result.jsp" name="formb">

                            <% int i=1; int radioname=0; ArrayList<Questions> allQuestions =
                                QuestionsDao.getAllRecords();

                                for(Questions e : allQuestions){
                                %>

                                <div class="question-card">

                                    <p><b>Q<%=i++%>. <%=e.getQuestion()%></b></p>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="<%=radioname%>" value="a">
                                        <label class="form-check-label">
                                            <%=e.getA()%>
                                        </label>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="<%=radioname%>" value="b">
                                        <label class="form-check-label">
                                            <%=e.getB()%>
                                        </label>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="<%=radioname%>" value="c">
                                        <label class="form-check-label">
                                            <%=e.getC()%>
                                        </label>
                                    </div>

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="<%=radioname%>" value="d">
                                        <label class="form-check-label">
                                            <%=e.getD()%>
                                        </label>
                                    </div>

                                    <input type="radio" value="e" name="<%=radioname%>" checked hidden>

                                </div>

                                <% radioname++; } %>

                                    <div class="text-center mb-5">

                                        <button class="btn btn-success btn-lg" type="submit">
                                            Submit Exam
                                        </button>

                                    </div>

                        </form>

                    </div>

                </body>

                </html>