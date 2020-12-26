<%-- 
    Document   : mensagens
    Created on : 19/12/2020, 17:04:26
    Author     : onitel
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <title>Baruk: Contate-nos</title>
        <jsp:include page="../head.jsp"/> 
    </head>
    <body>       
        <jsp:include page="../menu.jsp"/>
        <div class="container ">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Mensagens</li>
                </ol>
            </nav>
            <br>
            <table class="table table-hover card">
                <tr>
                    <th>Nome</th>
                    <th>Telefone</th>
                    <th>Email</th>
                    <th>Mensagem</th>
                </tr>
                 <c:forEach var="contatenos" items="${contatenos}">               
                   
                        <tr>
                            <td>${contatenos.nome}</td>
                            <td>${contatenos.telefone}</td>
                            <td>${contatenos.email}</td>
                            <td>${contatenos.mensagem}</td>
                        </tr>                                               
                
                  </c:forEach>   
            </table>
        </div><!-- /container -->
        <jsp:include page="../rodape.jsp"/>       
    </body>
    <jsp:include page="../js.jsp"/>
</html>