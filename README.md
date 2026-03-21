# 🧠 MCQ Portal

MCQ Portal is a Java-based Online Examination System developed using JSP, Servlets, JDBC, and MySQL/Oracle Database.
It allows administrators to manage questions and students, and enables students to take timed multiple-choice exams with automatic result evaluation.

---

# 📌 Project Overview

The **MCQ - Portal** is designed to conduct multiple-choice examinations in a digital environment.
It provides a secure platform where:

* **Admin** can manage students, instructions, and questions.
* **Students** can log in, read instructions, take the exam, and view results instantly.

The system automatically evaluates answers and displays the final score.

---

### Live Demo : https://youtu.be/dbg8_UXXboc?si=yRAJ2yf7jt2fePtK

---

# 🚀 Features

### 👩‍💻 Admin Panel

* Add / Update Students
* Add / Update Questions
* Manage Exam Instructions
* View Question List
* Delete Questions

### 🎓 Student Portal

* Student Login Authentication
* View Exam Instructions
* Start Online Test
* Timer-based Examination
* Automatic Answer Evaluation
* Instant Result Generation

---

# 🏗️ Project Architecture

```
MCQ-Portal
│
├── src
│   └── oes
│       ├── controller       # Servlet Controllers
│       ├── db               # Database Models
│       └── model            # DAO Classes
│
├── WebContent
│   ├── css
│   ├── images
│   ├── js
│   ├── AdminPanel.jsp
│   ├── StudentLogin.jsp
│   ├── Exam.jsp
│   ├── Result.jsp
│   └── index.html
│
└── WEB-INF
    └── web.xml
```

---

# 🛠️ Tech Stack

| Technology    | Purpose               |
| ------------- | --------------------- |
| Java          | Backend Logic         |
| JSP           | Dynamic Web Pages     |
| Servlets      | Request Handling      |
| MySQL         | Database              |
| JDBC          | Database Connectivity |
| Bootstrap     | UI Styling            |
| Apache Tomcat | Web Server            |

---

# 🗄️ Database

Example tables used in the system:

* **studenttable**
* **admintable**
* **questiontable**
* **instructiontable**

---
# 🔐 Admin Login Credentials

Use the following credentials to access the Admin Dashboard:

* Username: admin
* Password: admin

# ⚙️ Installation & Setup

### 1️⃣ Clone the Repository

```
git clone https://github.com/yourusername/MCQ-Portal.git
```

### 2️⃣ Import Project

Import the project into:

* Eclipse
* IntelliJ IDEA
* NetBeans

### 3️⃣ Configure Database

Create database in **MySQL / Oracle** and update connection details inside:

```
DBConnection.java
```

### 4️⃣ Deploy on Apache Tomcat

Copy project to:

```
apache-tomcat/webapps/
```

Then start the Tomcat server.

### 5️⃣ Run the Application

Open browser:

```
http://localhost:8080/MCQ-Portal
```

---

# 📸 Screens Included

* Admin Dashboard
* Student Login Page
* Exam Page with Timer
* Result Page

---

# 📊 How the Exam Works

1. Student logs into the portal.
2. System displays exam instructions.
3. Student starts the exam.
4. Questions are displayed with multiple-choice options.
5. Timer automatically submits exam when time ends.
6. System compares answers with database.
7. Result is generated instantly.

---

# 🎯 Learning Outcomes

Through this project I learned:

* Java Web Development using **JSP & Servlets**
* MVC architecture basics
* Database integration using **JDBC**
* Building dynamic UI with **Bootstrap**
* Implementing **exam timers and automatic evaluation**

---

# 👩‍💻 Author

**Jeevika Patanker**

B.Tech Computer Science Engineering
IPS Academy, Indore

Skills:

* Java
* MERN Stack
* SQL
* Python
* Web Development

---

# ⭐ Future Improvements

* Add **student result history**
* Add **admin analytics dashboard**
* Add **JWT authentication**
* Add **AI-based proctoring**
* Deploy on **cloud server**

---

# 📜 License

This project is developed for **learning and educational purposes**.
