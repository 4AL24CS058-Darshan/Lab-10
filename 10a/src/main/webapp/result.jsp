<%@ page language="java" %>

<h2>User Details</h2>

<p>Name: <%= request.getAttribute("name") %></p>
<p>Email: <%= request.getAttribute("email") %></p>
<p>Designation: <%= request.getAttribute("designation") %></p>

<br>

<a href="index.jsp">Go Back</a>