<%-- 
    Document   : runform
    Created on : 19.sep.2013, 14:24:55
    Author     : kennet
--%>

<%
    String name= request.getParameter("name");
    if(name==null || name == ""){
        out.println("Du må fylle inn opplysninger om navn: <a href='?p=ov4/form.html'>Fyll inn navn</a>");
    }
%>
    <h1>Opplysniger du har gitt er</h1>
    <%
        if(name!=null){
            out.println("<strong>" + name+ "</strong>");
        }
    %>
    <br/>
    Sitter på lab: <ul><li><%= "lab" + request.getParameter("where")%></li></ul>
    
    &Oslash;nsker hjelp til/med:
    <ul>
        <%
            out.println("<li>&Oslash;ving " + request.getParameter("nr") + "</li>");
            String[] values= request.getParameterValues("beskrivelse");
            if(values!= null){
                for(int i=0; i<values.length; i++){
                    if(!values[i].equals("annet")){
                        out.println("<li>" + values[i] + "</li>");
                    } else{
                        out.println("<li>Annet" + ": " + request.getParameter("annet") + "</li>");
                    }
                }
            }
        %>
    </ul>
        <%
            int number= Integer.parseInt(request.getParameter("nr"));
            if(number>=3){
                out.println("Flott. Nå har du jammen jobbet bra!");
            }
        %>