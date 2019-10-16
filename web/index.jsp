<%-- 
    Document   : index
    Created on : 15 oct. 2019, 15:55:20
    Author     : tecnologo
--%>
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
        <title>UyTube</title>
        <link rel="stylesheet" type="text/css" href="style.css"> 
    </head>
    <body>
        <div class="tab">
            <h1>Videos</h1>
            <div class="content">
                <%
                    try {
                        //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/UyTube?zeroDateTimeBehavior=convertToNull", "root", "tecnologo");
                        Sistema s = Sistema.getInstance();
                        s.CargarDatosPrueba();
                        
                        //DtUsuario dtusrr = s.getDataUsuario("cachilas");
                        //  System.out.print(dtusrr.getNombre());
                        Collection<DtVideo> dtvid = s.ListaTVideos();
                        Iterator<DtVideo> it = dtvid.iterator();
                        //Collection<DtVideo> videos=null;
                        //int d = 14, m = 4, a = 2019;
                        String url= null;
                        //Fecha f = new Fecha(d, m, a);
                        String Auxurl = "https://www.youtube.com/embed/iR1sAex__VA";//M5
                        //s.AltaVideo("Pepe", "3:00", Auxurl, "we", f, "cachilas", "deporte");
                        //s.AltaVideo("meme", "3:00", "https://www.youtube.com/embed/iR1sAex__VA"/*AVICCI*/, "we", f, "cachilas", "deporte");
                        //s.AltaVideo("wewe", "3:00", "https://www.youtube.com/embed/3ITdSQ3NmXU"/*TUTORIAL*/, "we", f, "cachilas", "deporte");
                        String name = "null";
                        /*if (!it.hasNext()) {
                        url = "https://www.youtube.com/embed/CevxZvSJLk8";//KP
                        s.AltaVideo("Pepe", "3:00", "https://www.youtube.com/embed/SlPhMPnQ58k", "we", f, "cachilas", "deporte");
                    }*/
                        while (it.hasNext()) {
                            DtVideo dtvids = it.next();
                            Auxurl = dtvids.getURL();
                            //videos.add(dtvid);
                            url = Auxurl.substring(17, 28);
                            name = dtvids.getNomVideo();
                %>   
                <div>
                    <%=name%>
                </div>
                <iframe width="200" height="105" src="https://www.youtube.com/embed/<%=url%>"></iframe>
                    <%
                        }
                    } catch (Exception e) {
                    
                    %> 
                
                <h1>Entra</h1>
                <%
                    }
                %>
            </div>
        </div>
    </body>
</html>
