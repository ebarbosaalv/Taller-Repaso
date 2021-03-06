<%-- 
    Document   : viewasks
    Created on : 28/04/2019, 10:51:10 PM
    Author     : orion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Ask</title>
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>

    <body>

        <style>
            .navbar {
                background-color: #ff6600;
            }

            .navbar .navbar-brand {
                color: #ecf0f1;
            }

            .navbar .navbar-brand:hover, .navbar .navbar-brand:focus {
                color: #ecdbff;
            }

            .navbar .navbar-text {
                color: #ecf0f1;
            }

            .navbar .navbar-text a {
                color: #ecdbff;
            }

            .navbar .navbar-text a:hover, .navbar .navbar-text a:focus {
                color: #ecdbff;
            }

            .navbar .navbar-nav .nav-link {
                color: #ecf0f1;
                border-radius: .25rem;
                margin: 0 0.25em;
            }

            .navbar .navbar-nav .nav-link:not (.disabled ):hover, .navbar .navbar-nav .nav-link:not
            (.disabled ):focus {
                color: #ecdbff;
            }

            .navbar .navbar-nav .nav-item.active .nav-link, .navbar .navbar-nav .nav-item.active .nav-link:hover,
            .navbar .navbar-nav .nav-item.active .nav-link:focus, .navbar .navbar-nav .nav-item.show .nav-link,
            .navbar .navbar-nav .nav-item.show .nav-link:hover, .navbar .navbar-nav .nav-item.show .nav-link:focus
            {
                color: #ecdbff;
                background-color: #000000;
            }

            .navbar .navbar-toggle {
                border-color: #000000;
            }

            .navbar .navbar-toggle:hover, .navbar .navbar-toggle:focus {
                background-color: #000000;
            }

            .navbar .navbar-toggle .navbar-toggler-icon {
                color: #ecf0f1;
            }

            .navbar .navbar-collapse, .navbar .navbar-form {
                border-color: #ecf0f1;
            }

            .navbar .navbar-link {
                color: #ecf0f1;
            }

            .navbar .navbar-link:hover {
                color: #ecdbff;
            }

            @media ( max-width : 575px) {
                .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item {
                    color: #ecf0f1;
                }
                .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item:hover,
                .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item:focus
                {
                    color: #ecdbff;
                }
                .navbar-expand-sm .navbar-nav .show .dropdown-menu .dropdown-item.active
                {
                    color: #ecdbff;
                    background-color: #000000;
                }
            }

            @media ( max-width : 767px) {
                .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item {
                    color: #ecf0f1;
                }
                .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item:hover,
                .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item:focus
                {
                    color: #ecdbff;
                }
                .navbar-expand-md .navbar-nav .show .dropdown-menu .dropdown-item.active
                {
                    color: #ecdbff;
                    background-color: #000000;
                }
            }

            @media ( max-width : 991px) {
                .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item {
                    color: #ecf0f1;
                }
                .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item:hover,
                .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item:focus
                {
                    color: #ecdbff;
                }
                .navbar-expand-lg .navbar-nav .show .dropdown-menu .dropdown-item.active
                {
                    color: #ecdbff;
                    background-color: #000000;
                }
            }

            @media ( max-width : 1199px) {
                .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item {
                    color: #ecf0f1;
                }
                .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item:hover,
                .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item:focus
                {
                    color: #ecdbff;
                }
                .navbar-expand-xl .navbar-nav .show .dropdown-menu .dropdown-item.active
                {
                    color: #ecdbff;
                    background-color: #000000;
                }
            }

            .navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item {
                color: #ecf0f1;
            }

            .navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item:hover,
            .navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item:focus {
                color: #ecdbff;
            }

            .navbar-expand .navbar-nav .show .dropdown-menu .dropdown-item.active {
                color: #ecdbff;
                background-color: #000000;
            }
        </style>




    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Hacker News </a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">login</a></li>
                    <li><a href="news.jsp">Noticias</a></li>
                    <li><a href="ask.jsp">Preguntas</a></li>
                    <li><a href="comments.jsp">Comentarios</a></li>
                </ul>
            </div>
        </nav>
    </head>
    <body>

        <%@page import="com.model.dao.AskDao,com.model.*,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <h1>Lista de todos las pregunta</h1>

        <%
            List<Ask> list = AskDao.getAllRecords();
            request.setAttribute("list", list);
        %>

        <table border="1" width="90%">
            <tr><th>Id</th><th>Texto</th><th>Edit</th><th>Eliminar</th></tr>
                    <c:forEach items="${list}" var="a">
                <tr><td>${a.getId()}</td><td>${a.getText()}</td><td><a href="editformask.jsp?id=${a.getId()}">Editar</a></td><td><a href="viewasks.jsp?id=${a.getId()}">Eliminar</a></td></tr>
            </c:forEach>
        </table>
        <br/><a href="ask.jsp">Agregar Pregunta</a>

    </body>
</html>

<%@page import="com.model.dao.AskDao"%>
<jsp:useBean id="a" class="com.model.Ask"></jsp:useBean>
<jsp:setProperty property="*" name="a"/>
<%
   AskDao.delete(a);


%>
