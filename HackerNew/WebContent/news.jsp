<%-- 
    Document   : news
    Created on : 26/04/2019, 01:17:51 AM
    Author     : orion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>News</title>

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
                    <li class="active"><a href="#">Noticias</a></li>
                    <li><a href="index.jsp">login</a></li>
                    <li><a href="ask.jsp">Preguntas</a></li>
                    <li><a href="comments.jsp">Comentarios</a></li>
                </ul>
            </div>
        </nav>
    </head>
<body>
<center>
    <table id="hnmain" border="0" cellpadding="0" cellspacing="0"
           width="85%" bgcolor="#f6f6ef">
        <tbody>
            <tr style="height: 10px"></tr>
            <tr>
                <td><form action="NewServlet" method="post">
                        <input type="hidden" name="fnid" value="QXTcv6OHsxgBjtaBDPD2ux"><input
                            type="hidden" name="fnop" value="submit-page">
                        <script type="text/javascript">
                            function tlen(el) {
                                var n = el.value.length - 80;
                                el.nextSibling.innerText = n > 0 ? n
                                        + ' too long' : '';
                            }
                        </script>
                        <table border="0">
                            <tbody>
                                <tr>
                                    <td>title</td>
                                    <td><input type="text" name="title" value="" size="50"
                                               oninput="tlen(this)" onfocus="tlen(this)"><span
                                               style="margin-left: 10px"></span></td>
                                </tr>
                                <tr>
                                    <td>url</td>
                                    <td><input type="text" name="url" value="" size="50"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><b>or</b></td>
                                </tr>
                                <tr>
                                    <td>text</td>
                                    <td><textarea name="text" rows="4" cols="49"></textarea></td>
                                </tr>
                                <tr>
                                    <td>Puntuar </td>
                                    <td> <select name="progress">
                                <option>10</option>
                                <option>20</option>
                                <option>30</option>
                                <option>40</option>
                                <option>50</option>
                                <option>60</option>
                                <option>70</option>
                                <option>80</option>
                                <option>90</option>
                                <option>100</option></td>
                            </select>
                                </tr>
                                <tr>
                                    <td></td>

                            <a href="viewnews.jsp" class="btn btn-warning" role="button">Mostrar Noticia</button></a>
                            <br><br>
                            </tr>
                            <tr style="height: 20px"></tr>
                            <tr>
                                <td></td>
                                <td>Deje la URL en blanco para enviar una pregunta para
                                    discusión. Si no hay una URL, el texto (si lo hay) aparecerá
                                    en la parte superior del hilo..<br> <br> You can
                                    also submit via <a href="bookmarklet.html" rel="nofollow"><u>bookmarklet</u></a>.
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <tr><td colspan="2"><input type="submit" value="Agregar Noticia"/></td></tr>
                        <br><br>
                    </form></td>

      

        </body>
        </html>


