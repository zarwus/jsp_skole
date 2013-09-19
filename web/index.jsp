<%-- 
    Document   : index
    Created on : 19.sep.2013, 10:37:49
    Author     : kennet
--%>

<%@include file="layout/html/top.html" %>
<%@include file="layout/html/nav.html" %>

<div id="text">

    <%
        String p = "pages/" + request.getParameter("p");
        if(request.getParameter("p") != null){
            %><jsp:include page="<%=p%>" /><%
        }else {
            %><jsp:include page="pages/main.jsp" /><%
        }
    %>

</div>
<%@include file="layout/html/bottom.html" %>