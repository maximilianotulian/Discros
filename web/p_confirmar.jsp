<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Confirmar Pedido - Discros INC</title>

    <%session.setAttribute("paginaActual", "p_confirmar");%>
    
    <jsp:include page="views/gral/referencias.jsp"/>
    
  </head>
  <body>

    <div class="container-fluid">
        
        <jsp:include page="views/gral/header.jsp"/>
        <jsp:include page="views/pedidos/contenido.jsp"/>
        <jsp:include page="views/gral/pie.jsp" />
        
   </div>