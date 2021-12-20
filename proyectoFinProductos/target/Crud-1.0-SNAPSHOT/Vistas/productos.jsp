

<%@page import="modelo.ProductosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Vivero</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        
    </head>
    <body style="background-color: #cdecdf; ">
        
           <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #6ebb9a;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
        <img src="https://image.freepik.com/vector-gratis/hojas-vector-menta-planta-menta-menta-hoja-verde-menta-organica-fresca-ilustracion_1284-47066.jpg" alt="" width="30" height="24" class="d-inline-block align-text-top">
      Vivero
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
        </li>
       
        <li class="nav-item">
            <a class="nav-link" href="ProductosController?accion=null">Listado de Productos</a>
        </li>
       
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
        
        
     
        
        
        
        
        <div class="container">
            <div class="row">
                <a class="btn btn-outline-success col-4 m-4" href="ProductosController?accion=nuevo"> Agregar producto</a>  
                <table class="table table-primary">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Precio</th>
                            <th>Stock</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>  
                    </thead>   
                    <tbody>
                     <% 
                         
                     List<Productos>resultado=null;
                     ProductosDAO producto = new ProductosDAO();
                     resultado = producto.listarProductos();
                     
                    for(int i=0; i<resultado.size(); i++){
                    String ruta ="ProductosController?accion=modificar&id="+ resultado.get(i).getId();
                    String rutaE ="ProductosController?accion=eliminar&id="+resultado.get(i).getId();
                    
                    %>      
                    
                    <tr>
                        <td><%= resultado.get(i).getId()%> </td>
                        <td><%= resultado.get(i).getNombre()%> </td>
                        <td><%= resultado.get(i).getDescripcion()%> </td>
                        <td><%= resultado.get(i).getPrecio()%> </td>
                        <td><%= resultado.get(i).getStock()%> </td> 
                       <td> <a class="text-success" onclick="return confirm('Esta seguro que quiere modificar?');" href= "<%=ruta%>"> X</a></td>                              
                       <td> <a class="text-danger" onclick="return confirm('Esta seguro que quiere eliminar?');" href=" <%=rutaE%>"> X</a></td>
                        
                    </tr>
   
                    </tbody>
                   
                        <%
                    }
                    %>       
                
                </table>       
            </div>   
        </div>     
        
         <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top" style="background-color: #6ebb9a; position: absolute; width:100%; bottom: 0; height: 75px;">
             <p class="col-md-4 mb-0 text-muted" >© 2021 Vivero, Inc</p>

    <a href="#" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
      <img src="https://image.freepik.com/vector-gratis/hojas-vector-menta-planta-menta-menta-hoja-verde-menta-organica-fresca-ilustracion_1284-47066.jpg" alt="triangle with all three sides equal" height="35" width="35" />
    </a>

    <ul class="nav col-md-4 justify-content-end">
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Inicio</a></li>
      <li class="nav-item"><a href="productosweb.jsp" class="nav-link px-2 text-muted">Productos</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Contacto</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Preguntas Frecuentes</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Locales</a></li>
    </ul>
  </footer> 
            
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
  
    </body>
</html>
