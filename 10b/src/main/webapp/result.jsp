<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Result Page</title>
</head>
<body>

<h2>Student Result</h2>

<p>Roll No: <%= request.getAttribute("roll") %></p>
<p>Name: <%= request.getAttribute("name") %></p>

<h3>Marks:</h3>

<p>Sub1: <%= request.getAttribute("s1") %></p>
<p>Sub2: <%= request.getAttribute("s2") %></p>
<p>Sub3: <%= request.getAttribute("s3") %></p>
<p>Sub4: <%= request.getAttribute("s4") %></p>
<p>Sub5: <%= request.getAttribute("s5") %></p>

<h3>Result Details:</h3>

<p>Total Marks: <%= request.getAttribute("total") %></p>
<p>Average: <%= request.getAttribute("avg") %></p>
<p>Result: <b><%= request.getAttribute("result") %></b></p>

<br>

<a href="index.jsp">Go Back to Client Side</a>

</body>
</html>