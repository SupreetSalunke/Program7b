<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ page import="javax.servlet.http.Cookie" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cookie Added</title>
</head>
<body>

<%
String name = request.getParameter("cname");
String domain = request.getParameter("cdomain");
int age = Integer.parseInt(request.getParameter("cage"));

// Create cookie
Cookie cookie = new Cookie(name, domain);
cookie.setMaxAge(age);

// Add cookie to response
response.addCookie(cookie);
%>

<h2>Cookie Added Successfully!</h2>

<p><b>Name:</b> <%= name %></p>
<p><b>Domain(Value):</b> <%= domain %></p>
<p><b>Expiry Age:</b> <%= age %> seconds</p>

<br>

<a href="viewCookies.jsp">Go to Active Cookie List</a>

</body>
</html>