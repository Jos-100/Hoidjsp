<%-- 
    Document   : jsp2
    Created on : 14 mar. 2023, 21:57:28
    Author     : delar
--%>
<%@page import="org.hoid.Datos"%>
<%@page import="org.hoid.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="stylesheet" href="style.css" type="text/css">
        
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hoid Venture</h1>
        <%
            Negocio negocio = new Negocio();
            int numero = (int)(Math.random()* 1000);
            String cad = String.format("?numero=%d", numero);
        %>
        
        <a href="jsp1.jsp<%=cad%>">Regresar a jsp1 con dato aleatorio>
        <a href="jsp1.jsp">Regresar a jsp1 sin dato generado</a>
        <br><br>
        <table class="table">
             <thead class="tablita">
                <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Calificación</th>

                </tr>
              </thead>
            <%
                if(negocio.getLista() != null && ! negocio.getLista().isEmpty())
                {
                    for(Datos datos : negocio.getLista())
                    {

            %>
            <tr>
                <td><%=datos.getNombre()%></td>
                <td><%=datos.getCalif()%></td>
            </tr>
            <%
                }
               }
            %>
            
        </table>
            
    </body>
</html>