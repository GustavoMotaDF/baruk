<%--
    Document   : empresas
    Created on : 16/12/2020, 15:58:13
    Author     : onitel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
    Document   : index
    Created on : 16/12/2020, 14:48:47
    Author     : onitel
--%>

<%--
    Document   : index
    Created on : 16/12/2020, 14:48:47
    Author     : onitel
--%>

<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <title>Baruk: Empresas</title>
        <jsp:include page="../includes/head.jsp"/>
    </head>
    <body>
        <jsp:include page="../includes/menu.jsp"/>
        <div class="container">
            <nav  style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Empresas</li>
                </ol>
            </nav>
            <br>
            <%-- INCLUDE DA FUNÇÃO CADASTRAR EMPRESA--%>
            <jsp:include page="../includes/logado/cadempresa.jsp"/>          
           
        </div>
        <br>
        <c:forEach var="empresas" items="${empresas}">
            <div class="container bg-secondary">
                <br>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">${empresas.empresa}</h5>
                                <p class="card-text">${empresas.descricao}</p>
                                <a href="http://${empresas.link}" target="_blank" class="btn btn-primary">Visite o site - ${empresas.link}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
            </div>
        </c:forEach>

    </div><!-- /container -->
    <jsp:include page="../includes/rodape.jsp"/>
</body>
<jsp:include page="../includes/js.jsp"/>
</html>


