<%-- 
    Document   : musica
    Created on : 16 oct. 2019, 12:16:32
    Author     : tecnologo
--%>

<%@page import="DT.DtCategoria"%>
<%@page import="Entidades.Categoria"%>
<%@page import="java.sql.*"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="Entidades.Fecha"%>
<%@page import="DT.DtLR"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="DT.DtVideo"%>
<%@page import="DT.DtCanal"%>
<%@page import="DT.DtUsuario"%>
<%@page import="Controladores.Sistema"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Musica</title>
        <link rel="stylesheet" type="text/css" href="Musica.css">
    </head>
    <body>
        <%String valor = request.getParameter("value");%>
        <h1><%=valor%></h1>
        
        <%          
            try{
                //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/UyTube?zeroDateTimeBehavior=convertToNull", "root", "tecnologo");
                Sistema s = Sistema.getInstance();
                s.CargarDatosPrueba();
                DtUsuario dtusrr = s.getDataUsuario("cachilas");
                Categoria cate = s.getCategoria(valor);
                /*  System.out.print(dtusrr.getNombre());
                 Collection<DtCategoria> dtCategorias = s.ListaCategorias();
                        Iterator<DtCategoria> it1 = dtCategorias.iterator();
                        String c = "test";
                        while (it1.hasNext()) {
                            DtCategoria dtc = it1.next();
                            if (dtc != null) {
                                c = dtc.getCategoria();
                            }*/
                Collection<DtVideo> dtvids = dtusrr.getDtVideos();
                Iterator<DtVideo> it = dtvids.iterator();
                String url = null;//M5 
                String Auxurl = "https://www.youtube.com/embed/iR1sAex__VA";
                String name = "null";
               
                /*if (!it.hasNext()) {
                        url = "https://www.youtube.com/embed/CevxZvSJLk8";//KP
                        s.AltaVideo("Pepe", "3:00", "https://www.youtube.com/embed/SlPhMPnQ58k", "we", f, "cachilas", "deporte");
                    }*/
                while (it.hasNext()) {
                    DtVideo dtvid = it.next();
                    Auxurl = dtvid.getURL();
                    url = Auxurl.substring(17, 28);
                    name = dtvid.getNomVideo();
                    if(valor == "Musica") {%>
        <div>
            <%=name%>
        </div>
        <iframe width="200" height="105" src="https://www.youtube.com/embed/<%=url%>"></iframe>
            <%
                    }
                }
            } catch (Exception e) {
            %>
        <h1>No hay</h1>
        <% }
        %>
    </body>
</html>
