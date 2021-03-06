<%-- 
    Document   : home.jsp
    Created on : Sep 24, 2015, 6:47:02 PM
    Author     : xl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/main.css" />
        <link rel="stylesheet" type="text/css" href="styles/header.css" />
        <link rel="stylesheet" type="text/css" href="styles/footer.css" />
        <title>Home Page</title>
    </head>
    <body>
        <div id="header"><c:import url="header.jsp" /></div>
        <!-- TODO: BEFORE TESTING IF USER IS NULL CHECK COOKIE TO AND LOAD USER IF THERE IS A COOKIE -->
        <c:if test="${user == null}">
            <c:redirect url = "/login.jsp"/>
        </c:if>
        <span>Welcome to your homepage </span> 
        <c:out value="${user.fullname}" />
        <br />
        <div id="footer"><c:import url="footer.jsp" /></div>
    </body>
</html>
