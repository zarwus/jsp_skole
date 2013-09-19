<%-- 
    Document   : oppg4
    Created on : 19.sep.2013, 13:14:30
    Author     : kennet
--%>
<h1>Oppgave 4</h1>
<%@page import="java.lang.Math" %>

<ul>
<%
    int[] tall = {-16, 0, 25};
    
    for(int i=0; i<tall.length; i++){
        if(tall[i]<0){
            out.println("<li>Kan ikke ta kvadratrota av" + tall[i] + ". <strong>Tallet er negativt!</strong></li>");
        } else{
            out.println("<li>Kvadratroten av " + tall[i] + " er " + Math.sqrt(tall[i])+ "</li>");
        }
    }
%>
</ul>