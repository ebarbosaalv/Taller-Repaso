<%-- 
    Document   : edituser
    Created on : 25/04/2019, 11:17:52 PM
    Author     : orion
--%>

<%@page import="com.model.dao.UserDao"%>
<jsp:useBean id="u" class="com.model.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDao.update(u);
response.sendRedirect("viewusers.jsp");
%>
