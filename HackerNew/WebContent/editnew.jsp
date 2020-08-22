<%-- 
    Document   : editnew
    Created on : 26/04/2019, 01:13:38 AM
    Author     : orion
--%>

<%@page import="com.model.dao.NewDao"%>
<jsp:useBean id="n" class="com.model.New"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>

<%

int i=NewDao.update(n);
response.sendRedirect("viewnews.jsp");
%>