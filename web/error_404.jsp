<%-- 
    Document   : error_404
    Created on : Nov 9, 2012, 11:15:17 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="/includes/header.html" />
    </head>
    <body>
        <%@ page isErrorPage="true" %>
        <h1>404 Error</h1>
        <p>The server was not able to find the file you requested.</p>
        <p>To continue, click the Back button.</p>
        <br>
          <jsp:include page="/includes/footer.jsp" />
    </body>
</html>
