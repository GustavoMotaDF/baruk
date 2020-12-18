<%-- 
    Document   : menu
    Created on : 16/12/2020, 15:12:30
    Author     : onitel
--%>



<nav class="navbar navbar-expand-lg navbar-light bg-secondary comfortaa">
    <div class="container-fluid">

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
       
       

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
             <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            
             <h2 class="titulo">Grupo Baruk</h2>
        </ul>
            <ul class="navbar-nav me-auto mb-lg-0">

                <li class="nav-item">
                    <a class="nav-link active item" aria-current="page" href="${pageContext.request.contextPath}/"><i class="fas fa-home"></i> Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active item" href="${pageContext.request.contextPath}/Empresas"><i class="fas fa-hotel"></i> Empresas</a>
                </li>
                <li class="nav-item dropdown items ">
                    <a class="nav-link dropdown-toggle active item" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-exclamation"></i> Sobre Nós
                    </a>
                    <ul class="dropdown-menu active itemms" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item itemm" href="${pageContext.request.contextPath}/Historia"><i class="fas fa-history"></i> História</a></li>
                        <li><a class="dropdown-item itemm" href="${pageContext.request.contextPath}/Missao"><i class="far fa-handshake"></i> Missão</a></li>
                        <li><a class="dropdown-item itemm" href="${pageContext.request.contextPath}/Contate-nos"><i class="far fa-comment-dots"></i> Contate-nos</a></li>
                    </ul>
                </li>
            </ul>

            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active item" aria-current="page" href="#"><i class="fas fa-user"></i> Usuário</a>
                </li>
            </ul>

            
        </div>
    </div>
</nav>


