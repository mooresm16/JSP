<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Stephen's E-mail Application</title>
</head>

<body>
    <jsp:include page="/includes/header.html"/>
        
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <%@ page import="business.User" %>
    <% User user = (User) request.getAttribute("user"); %>
    <table cellspacing="5" cellpadding="5" border="1">
        <tr>
            <td align="right">First name:</td>
            <td><%= user.getFirstName() %></td>
        </tr>
        <tr>
            <td align="right">Last name:</td>
            <td><%= user.getLastName() %></td>
        </tr>
        <tr>
            <td align="right">Email address:</td>
            <td><%= user.getEmailAddress() %></td>
        </tr>
    </table>

    <p>To enter another email address, click on the Back <br>
    button in your browser or the Return button shown <br>
    below.</p>

    <form action="oldhtml.html" method="post">
        <input type="submit" value="Return">
    </form>
    <jsp:include page="/includes/footer.jsp"/>
</body>
</html>