<%-- 
    Document   : presentacion
    Created on : 01-nov-2020, 18:17:39
    Author     : edlobez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="static/css/video.css" />
        <script src="static/js/jquery.min.js"></script>
        <script src="static/js/jquery-ui.js"></script>
        <script src="static/js/myjs/myjs.js"></script>
        
        <title>PetManagement</title>
    </head>
    <body>        
        <div class="video">
            <video controls autoplay width="640" height="480">
                <source src="<c:url value="/static/resources/videos/sportapp.mp4"/>">
                <source src="<c:url value="/static/resources/videos/sportapp.ogg"/>">
                Tu navegador no soporta HTML5 video.            
            </video>
        </div>
    </body>
</html>

