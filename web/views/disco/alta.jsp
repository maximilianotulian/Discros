
<div style="background-color: #ffffff; margin-top:75px; margin-bottom: 15px">
  

<!-- FORMULARIO DE REGISTRO DE NUEVO DISCO-->
<div class="row" style="margin-left: 15%; margin-right: 15%; margin-bottom: 2%" >
    
    <hr> 
    
   
    <%  String s = (String)session.getAttribute("tipoUsuario");
        
        if(s!=null){%>
      
        <% if(session.getAttribute("mensajeExito")!= null)
        {%>
               <br><br>    
               <div class="alert alert-danger">
               <% out.print((String)session.getAttribute("mensajeExito"));
               session.setAttribute("mensajeExito", null);
               %>
               </div>     
    
     <%}%>
      
      
   <form role="form" class="form-horizontal"  method="post"  action="dAlta.do">
   <h2 style="text-align: center;">Registro de nuevo disco.</h2>
   <hr>
   <h4>Datos del disco</h4>
   <hr>
   
    <div class="col-xs-8">
          
    
    <label for="UPC">UPC:</label>
    <input type="text" class="form-control" id="upc" name="upc"  placeholder="Introduce UPC del disco">
    </div>
    <br><br><br><br>
    
    
    <div class="col-xs-8">
    <label for="Artista">Artista:</label>
    <input type="text" class="form-control" id="artista"  name="artista" placeholder="Ingrese el artista.">
    </div>
    <br><br><br><br>
    
       
    <div class="col-xs-8">
    <label for="album">Album:</label>
    <input type="text" class="form-control" placeholder="Ingrese el Album" name="album" id="album"><br>
    </div>
    <br><br><br><br>
           
    
    <div class="col-xs-8">
    <label for="genero">G�nero:</label>
    <input type="text" class="form-control" placeholder="Ingrese el genero" name="genero" id="genero"><br>
    </div>
    <br><br><br><br>
            
    <div class="col-xs-8">
    <label for="stock">Stock:</label>
    <input type="text" class="form-control" placeholder="Ingrese Stock" name="stock" id="stock"><br>
    </div>
    <br><br><br><br>
            
    <div class="col-xs-8">
    <label for="Ciudad">Ingrese su Ciudad</label>
    <input type="text" class="form-control" placeholder="Ciudad" name="ciudad" id="ciudad">
    </div>
    <br><br><br><br>
      
    
    <div class="col-xs-8">
    <label for="descripcion">Descripci�n:</label>
    <input type="text" class="form-control" placeholder="Ingrese descripcion" name="descripcion" id="descripcion">
    </div>    
    <br><br><br><br>
    
    <div class="col-xs-8">
    <label for="precio">Precio:</label>
    <input type="text" class="form-control" placeholder="Ingrese Precio:" name="precio" id="precio">
    </div>    
    <br><br><br><br>
            
                
    <button type="submit" class="btn btn-default" style="width: 220px; margin-left: 15px;">Registrar</button>
    <br><br>
   
</form>
    </div>
    
        <% }else{%>     <!-- USUARIO NO LOGUEADO-->
                        <div class="row" style="margin-left: 15%; margin-right: 15%; margin-bottom: 2%" >

                        <h3 style="text-align: center; font-style: italic;">
                        Lo sentimos, debe iniciar sesi�n como administrador.
                        </h3>
                        <hr> 
                        </div>
                    <%}%>
              
       
        
    
  
</div>

    