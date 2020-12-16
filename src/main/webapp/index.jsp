<%-- 
    Document   : index
    Created on : 16/12/2020, 14:48:47
    Author     : onitel
--%>

<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <title>Baruk</title>
        <meta name="description" content="Modern effects and styles for off-canvas navigation with CSS transitions and SVG animations using Snap.svg" />
        <meta name="keywords" content="sidebar, off-canvas, menu, navigation, effect, inspiration, css transition, SVG, morphing, animation" />
        <meta name="author" content="Codrops" />    
        <jsp:include page="includes/css.jsp"/>
        <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="container1">
            <jsp:include page="includes/menu.jsp"/> 

            <header class="codrops-header" style="color: white">                  
                <h1>Grupo Baruk <span></span></h1>   

            </header>

            <jsp:include page="includes/rodape.jsp"/>
        </div><!-- /container1 -->

    </body>

    <jsp:include page="includes/js.jsp"/>
</html>