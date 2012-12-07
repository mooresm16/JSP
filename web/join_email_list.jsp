<%-- 
    Document   : join_email_list
    Created on : Nov 5, 2012, 11:03:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="/includes/header.html" />
        <%@ page import="business.User" %>
        <%
            //get attributes
            User user = (User) request.getAttribute("user");
            String message = (String) request.getAttribute("message");
            // handle null values
            if(user == null) user = new User();
            if(message == null) message = "";
        %>
        <h1>Join our email list JSP</h1>
        <p>To join our email list, enter your name and
            email address below. <br>
            Then, click on the Submit button.</p>
        <p><i><%= message %></i></p>
        <form action="addToEmailList" method="post">
        <table cellspacing="5" border="0">
            <tr>
                <td align="right">First name:</td>
                <td><input type="text" name="firstName" value="<%= user.getFirstName() %>"></td>
            </tr>
            <tr>
                <td align="right">Last name:</td>
                <td><input type="text" name="lastName" value="<%= user.getLastName() %>"></td>
            </tr>
            <tr>
                <td align="right">Email address:</td>
                <td><input type="text" name="emailAddress" value="<%= user.getEmailAddress() %>"></td>
            </tr>
            <tr>
                <td></td>
                <td><br><input type="submit" value="Submit"></td>
            </tr>
        </table>
        </form>
            <jsp:include page="/includes/footer.jsp" />
    </body>
</html>
