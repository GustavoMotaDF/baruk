<%-- 
    Document   : missao
    Created on : 16/12/2020, 23:46:32
    Author     : alephtav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <title>Baruk: Missão</title>
        <jsp:include page="../includes/css.jsp"/>
    </head>
    <body>       
        <jsp:include page="../includes/menu.jsp"/>
        <div class="container">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Missão</li>
                </ol>
            </nav>
        </div><!-- /container -->
        <jsp:include page="../includes/rodape.jsp"/>       
    </body>
    <jsp:include page="../includes/js.jsp"/>
</html>