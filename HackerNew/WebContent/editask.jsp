<%-- 
    Document   : editask
    Created on : 28/04/2019, 11:15:34 PM
    Author     : orion
--%>


<%@page import="com.model.dao.AskDao"%>
<jsp:useBean id="a" class="com.model.Ask"></jsp:useBean>
<jsp:setProperty property="*" name="a"/>

<%

    int i = AskDao.update(a);
    response.sendRedirect("viewasks.jsp");
%>