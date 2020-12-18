<%-- 
    Document   : cadempresa
    Created on : 18/12/2020, 16:43:40
    Author     : onitel
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
            
            <%-- BOTÃO PARA ABRIR MODAL--%>   
            <div class="position-relative">
                <div class="position-absolute top-0 start-100 translate-middle">
                    <button type="button" class="btn btn-primary float" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <i class="fas fa-plus"></i>
                    </button>

                </div>

            </div>



            <%-- MODAL CAD CLIENTE--%>   
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
                
                   <%-- MENSAGENS ALERT--%>   
             <div class="position-relative">
                <div class="position-absolute bottom-0 end-0">

                    <div class="alert alert-warning alert-dismissible fade show foo" role="alert">
                        ${mensagemSucesso}
                        ${mensagemErro}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </div>
            </div>
