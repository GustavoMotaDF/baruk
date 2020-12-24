<%--
    Document   : contatenos
    Created on : 16/12/2020, 23:46:43
    Author     : alephtav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <title>Baruk: Contate-nos</title>
        <jsp:include page="../includes/head.jsp"/>
    </head>
    <body>
        <jsp:include page="../includes/menu.jsp"/>
        <div class="container">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Contate-nos</li>
                </ol>
            </nav>
            <br>
             
            <form class="row bg-light">
                <div class=""><</div>
                <div class="col-md-6">
                    <label for="inputnomr" class="form-label">Nome</label>
                    <input type="text" class="form-control" id="inputnome" placeholder="Nina Baruk">
                </div>
                <div class="col-md-6">
                    <label for="inputtelefone" class="form-label">Telefone</label>
                    <input type="tel" class="form-control" id="inputtelefone " placeholder=" 99 9 9999-9999">
                    <br>
                </div>
                
                <div class="col-12">
                    <label for="inputemail" class="form-label">Email</label>
                    <input type="email" class="form-control" id="inputemail" placeholder="baruk@grupobaruk.com.br">
                    <br>
                </div>
                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Sua mensagem</label>
                    <textarea placeholder="Digite sua mensagem, contendo o maior numero de detalhes possivel" class="form-control"></textarea>

                    <br>
                    <br>

                </div>

                    <div class="col-md-3">
                    </div>
                    <div class="col-md-3">
                        <button type="reset" class="btn btn-warning form-control">Cancelar</button>
                    </div>
                    <div class="col-md-3">
                        <button type="submit" class="btn btn-primary form-control">Enviar</button>
                    </div>
                    <div class="col-md-3">
                    </div> 
                <br>
                <br>

            </form>
        </div><!-- /container -->
        <jsp:include page="../includes/rodape.jsp"/>
    </body>
    <jsp:include page="../includes/js.jsp"/>
</html>