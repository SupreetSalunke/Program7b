<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ page import="javax.servlet.http.Cookie" %>

<!DOCTYPE html>
<html>
<head>
    <title>Active Cookies</title>
</head>
<body>

<h2>Active Cookie List</h2>

<%
Cookie[] cookies = request.getCookies();

if (cookies != null) {
    for (Cookie c : cookies) {
%>
        <p>
        Name: <%= c.getName() %> |
        Value: <%= c.getValue() %> |
        Max Age: <%= c.getMaxAge() %>
        </p>
<%
    }
} else {
%>
    <p>No cookies found</p>
<%
}
%>

<br>
<a href="index.jsp">Add Another Cookie</a>

</body>
</html>