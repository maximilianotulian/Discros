//FUNCIONES CON LLAMADAS AJAX
function agregar(upc){
       $.ajax("cAdd.do", {
             type: "POST",
             dataType: null,
             data: { "upc": upc},
             error: function (a, b, c)
             {window.alert("ERROR A: "+a+"  | ERROR B: "+b+"  | ERROR C: "+c);},
             success: function ()
             {location.reload();}
            });
 };

function borrar(upc){
       $.ajax("cDelete.do", {
             type: "POST",
             dataType: null,
             data: { "upc": upc},
             error: function (a, b, c)
             {window.alert("ERROR A: "+a+"  | ERROR B: "+b+"  | ERROR C: "+c);},
             success: function ()
             {location.reload();}
             });
 };

//FUNCIONES SIN LLAMADAS AJAX
function show(id) {
    var obj = document.getElementById(id);
    obj.style.display = (obj.style.display === 'none') ? 'block' : 'none';
}
     
function validaBusqueda()
{
    var ok =0;
    
    var texto = $('#texto').val();
    var tipo = $('#tipo').val();;
    
    if(!estaVacio(texto))
    {   
        $("#formText").addClass('has-error');
    }else   {
             $("#formText").removeClass('has-error');
             ok=ok+1;
            }
            
    if(!estaVacio(tipo))
    {    $("#formTipo").addClass('has-error');
    
    }else   {
             $("#formTipo").removeClass('has-error');
             ok=ok+1;   
            }
    
    if(ok===2){
    window.location.href= "t_busqueda.jsp?texto="+texto+"&tipo="+tipo;
    }
}; 

var funciones = {
 validarr: function(e)
{ 
    var msj = "";
    var tipo = $('#tipo').val();
    var texto = $('#texto').val();          
     
    if(!estaVacio(tipo))
    {    $("#formTipo").addClass('has-error');
         msj="error";
    }else   {
             $("#formTipo").removeClass('has-error');
            }
            
    if(!estaVacio(texto))
    {    $("#formText").addClass('has-error');
         msj="error";
    }else if(!soloNumero(texto)){
             $("#formText").addClass('has-error');
            }
            else{ $("#formText").removeClass('has-error');}
       
    
    if(msj==="")
    {  
    }else{   
     e.preventDefault();  
    }  
}
}; 

$(document).ready(function(){

    $("#actualizarAdmin").submit(function(e){
    funciones.validarr(e);
    });   

    $("#actualizarCliente").submit(function(e){
    funciones.validarr(e);
    }); 
});
