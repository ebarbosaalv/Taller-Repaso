<%-- 
    Document   : ask
    Created on : 15/03/2019, 01:09:34 AM
    Author     : orion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ask</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>




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
                    <li class="active"><a href="#">Preguntas</a></li>
                    <li><a href="news.jsp">Noticias</a></li>
                    <li><a href="comments.jsp">Comentarios</a></li>
                    <li><a href="index.jsp">login</a></li>
                </ul>
            </div>
        </nav>
           <a href="viewasks.jsp" class="btn btn-warning" role="button">Mostrar Pregunta</button></a>
        <br><br>
        
        <b>Ingrese su pregunta</b>

     

        <form method="post" action="AskServlet1">
            <input type="hidden" name="fnid" value="yRecRG7CktUgqpi3UPC20x"><input
                type="hidden" name="fnop" value="forgot-password">texto : <input
                type="text" name="text" size="70"><br>
            <br> <input type="submit" value="aceptar">
        </form>
    </body>
</html>