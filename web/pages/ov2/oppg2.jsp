<%-- 
    Document   : oppg2
    Created on : 19.sep.2013, 13:10:15
    Author     : kennet
--%>

<h1>Oppgave 2</h1>
<%@page import="java.util.Date" %>

<%
    Date dato = new Date();
    int time = dato.getHours();
    String minutt = "" + dato.getMinutes();
    
    if(dato.getMinutes() < 10){
        minutt = "0" + dato.getMinutes();
    }
%>

<p>Klokka er <%= time + ":" + minutt %></p>

<%
    if(time<10){
        out.println("<p><strong>God morgen!</strong></p>");
    } else if(time>=10 && time<17){
        out.println("<p><strong>God dag!</strong></p>");
    } else{
        out.println("<p><strong>God kveld!</strong></p>");
    }
%>

