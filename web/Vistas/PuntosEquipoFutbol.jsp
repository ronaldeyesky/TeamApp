<%-- 
    Document   : PuntosEquipoFutbol
    Created on : 28/05/2015, 10:18:46 AM
    Author     : SAMUEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../WEB-INF/jspf/jscss.jspf" %>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/top.jspf" %>
        <div class="jumbotron">
        <center>
        <%      
                        
            int[][] equipos = {{1,9,7,1,1,10,3,0,0},{2,9,6,2,1,8,4,0,0},{3,8,5,2,1,6,3,0,0}};
        // Calculo de la Diferencia de Goles y puntaje
             
            for (int i=0;i<3;i++){
               // Para calcular la Diferencia de goles
               int DG;
               int GF = equipos[i][5];
               int GC = equipos[i][6];
               DG = GF - GC ;
               equipos[i][7] = DG;
               //Calcular el puntaje
               int Puntaje;
               int PG = equipos[i][2];
               int PE = equipos[i][3];
               Puntaje = (PG*3) + PE;
               equipos[i][8] = Puntaje;
                        
            }                         
               
        %>
                        
        <div style="width: 600px;">
            <br>
         <table class="table table-bordered">
               <tr>
                    <th>Equipo</th>
                    <th>PJ</th>
                    <th>PG</th>
                    <th>PE</th>
                    <th>PP</th>
                    <th>GF</th>
                    <th>GC</th>    
                    <th>DG</th>
                    <th>Puntos</th>
                    <th></th>
                </tr>
<<<<<<< HEAD
              
              <tr>
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>  
                    <td></td>
                    <td>
                        <a href="" class="btn btn-primary btn-sm">Editar</a>
                        <a href="" class="btn btn-primary btn-sm">Eliminar</a>
                    </td>
                </tr>
                =======
                <%for (int i=0;i<3;i++){%>
                    <tr>  
                           <% for(int j=0;j<9;j++){%>                            
                            <td><%out.println(equipos[i][j]);}%></td>
                            <td>
                                    <a href="" class="btn btn-primary btn-sm">Editar</a>
                                    <a href="" class="btn btn-primary btn-sm">Eliminar</a>
                            </td>
                    </tr> <%}%>                                                                            
>>>>>>> origin/master
            </table>
            </div>
        </center>
        </div>
        <%@include file="../WEB-INF/jspf/bottom.jspf" %>
        </body>
</html>
