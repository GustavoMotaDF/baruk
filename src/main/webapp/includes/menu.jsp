<%-- 
    Document   : menu
    Created on : 16/12/2020, 15:12:30
    Author     : onitel
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<div class="menu-wrap">
    <nav class="menu">
        <div class="profile"><img src="../img/user1.png" alt="Sr. Baruk"/><span>Sr. Baruk</span></div>
        <div class="icon-list">
            <a href="${pageContext.request.contextPath}/"><i class="fa fa-star"></i><span>Inicio</span></a>
            <a href="${pageContext.request.contextPath}/Empresas"><i class="fa fa-star"></i><span>Empresas Baruk</span></a>
            <br>
            <br>
            <a href="#"><i class="fa fa-window-close" aria-hidden="true"></i><span>Sair</span></a>            
        </div>
    </nav>
    <button class="close-button" id="close-button">Close Menu</button>

</div>
<button class="menu-button" id="open-button"></button>