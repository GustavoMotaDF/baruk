<%--
    Document   : empresas
    Created on : 16/12/2020, 15:58:13
    Author     : onitel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <nav class="bg-white" style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Empresas</li>
                </ol>
            </nav>
            <br>
            <div class="position-relative">
                <div class="position-absolute top-0 start-100 translate-middle">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary float" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <i class="fas fa-plus"></i>
                    </button>

                </div>

            </div>



            <!-- Modal -->
            <form action="${pageContext.request.contextPath}/Empresas" method="post">
                <c:if test="${empty empresaeditando}">
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Adicionar Empresa</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body form">
                                    <input type="text" class="form-control" name="empresa" placeholder="Empresa"/><br>
                                    <input type="text" class="form-control" name="descricao" placeholder="Descrição"/><br>
                                    <input type="text" class="form-control"  name="link" placeholder="Link"/>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <input class="btn btn-outline-success" type="submit" name="cadastrar" value="Cadastrar"/><br>
                                    <button type="reset" class="btn btn-outline-danger">Cancelar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </form>

            <div class="position-relative">
                <div class="position-absolute bottom-0 end-0">
 
                    <div class="alert alert-warning alert-dismissible fade show foo" role="alert">
                        ${mensagemSucesso}
                        ${mensagemErro}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>

                </div>

            </div>



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
                                <a href="https://${empresas.link}" target="_blank" class="btn btn-primary">Visite o site - ${empresas.link}</a>
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


