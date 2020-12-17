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
        <jsp:include page="../includes/css.jsp"/>
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

            <div>

                <div class="foo" id="foo"> 
                    ${mensagemSucesso}
                    ${mensagemErro}
                </div>
                <script>
                    $(document).ready(function () {
                        setTimeout(function () {
                            $('#foo').hide();
                            $('.foo').hide();
                        }, 10000);
                    });
                </script>
            </div>


            <form action="${pageContext.request.contextPath}/Empresas" method="post">
                <c:if test="${empty empresaeditando}">
                      Empresa :  <input type="text" name="empresa" placeholder="Empresa"/><br>
                Descrição :  <input type="text" name="descricao" placeholder="Descrição"/><br>
                Link :  <input type="text" name="link" placeholder="Link"/>   
                    
                </c:if>
                     
                
                <input class="btn btn-outline-danger" type="submit" name="cadastrar"/><br>
                <button type="reset" class="btn btn-outline-danger">Cancelar</button>
            </form> 













            <div class="container bg-secondary">
                <br>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Art Baruk Crô</h5>
                                <p class="card-text">Empresa comandada por Nina Baruk, a renomada Sr. Baruk. Empresas do ramo Têxtil. </p>
                                <a href="#" class="btn btn-primary">Visite o Site.</a>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Salão Marina Vasconcelos</h5>
                                <p class="card-text">Empresa comanada pela renomada Design de sobrancelhas, Marina Beatriz.  Empresa do ramo de Beleza.</p>
                                <a href="#" class="btn btn-primary">Visite o Site.</a>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            </div>
        </div><!-- /container -->
        <jsp:include page="../includes/rodape.jsp"/>       
    </body>
    <jsp:include page="../includes/js.jsp"/>
</html>


