<%-- 
    Document   : index
    Created on : 19.sep.2013, 15:21:07
    Author     : kennet
--%>

<jsp:include page="logo.html" flush="true" />
<hr/>
<%
  /* Setter no-cache, spesielt erfart problemer med Opera */
  response.setHeader("Cache-control", "no-cache");
  lagKake("test", "test", response);
  %>
<center>
    <table border="1">
        <tr><th align="left">Velg de temaene du er interessert i:</th></tr>
        <tr>
            <td>
                <form action="?p=ov5/index.jsp" method="post">
                    Bil<input type="checkbox" name="int" value="Bil"/>
                    Sport<input type="checkbox" name="int" value="Sport"/>
                    Musikk<input type="checkbox" name="int" value="Musikk"/>
                    Mat<input type="checkbox" name="int" value="Mat"/>
                    <input type="submit" name="send" value="send"/>
                </form>
            </td>
        </tr>
    </table>
</center>
    
    <%
        Cookie enkake = new Cookie("test", "test");
        response.addCookie(enkake);
        String side ="";
        String[] interesse= {"Bil", "Mat", "Musikk", "Sport"};
        String send= request.getParameter("send");
        if(send==null){
            Cookie kake;
            for(int i=0; i<interesse.length; i++){
                kake = getCookie(interesse[i], request);
                if(kake != null){
                    side = kake.getName() + ".html";
                    %><jsp:include page="<%=side%>" flush="true" /><%
                }
            }
        }else {
            String[] valg = request.getParameterValues("int");
            if(valg != null){
                for(int i=0; i<valg.length; i++){
                    lagKake(valg[i], valg[i], response);
                    side= valg[i] + ".html";
                    %><jsp:include page="<%=side%>" flush="true" /><%
                }
            }
        }
    %>
    
    
    <%!
        public void lagKake(String name, String value, HttpServletResponse response){
            Cookie c= new Cookie(name, value);
            c.setMaxAge(3600);
            response.addCookie(c);
        }
        
        public Cookie getCookie(String name, HttpServletRequest request){
            Cookie[] table = request.getCookies();
            
            if(table==null){
                return null;
            } else{
                for(Cookie c: table){
                    if(c.getName().equals(name)){
                        return c;
                    }
                }
            }
            
            return null;
        }
    %>
</center>