<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title> Login - Discros INC</title>

    <%session.setAttribute("paginaActual", "u_login");%>
    
    <jsp:include page="views/gral/referencias.jsp"/>
    
  </head>
  <body>

    <div class="container-fluid">
        
        <jsp:include page="views/gral/header.jsp"/>
        <jsp:include page="views/usuarios/login.jsp"/>
        <jsp:include page="views/gral/pie.jsp" />
        
</div>

      
    
  </body>
</html>