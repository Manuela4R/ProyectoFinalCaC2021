<%-- 
    Document   : modificar
    Created on : 19 dic. 2021, 13:41:43
    Author     : Manuela
--%>


<%@page import="modelo.ProductosDAO"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Modificar</title>
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
            <h1 class="text-center">Modificar producto</h1>
            <div class="row">
                <form class="p-5" action="ProductosController?accion=actualizar" method="POST">
                      <%
                         String id = request.getParameter ("id"); // Use request para obtener 
                          int mid;
                        mid =Integer.parseInt(id);
                        Productos resultado=null;
                        ProductosDAO producto=new ProductosDAO();
                        resultado=producto.mostrarProductos(mid);
                %>   
                    
                  
                     <div class="mb-3">
                            <label for="id" class="form-label"> ID</label>
                            <input type="hidden" class="form-control" id="id" name="id" value="<%=resultado.getId()%>">      
                        </div>
                                        
                        <div class="mb-3">
                            <label for="nombre" class="form-label"> Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value="<%=resultado.getNombre()%>">      
                        </div>
                    
                        <div class="mb-3">
                            <label for="descripcion" class="form-label"> Descripcion</label>
                            <input type="text" class="form-control" id="descripcion" name="descripcion" value="<%=resultado.getDescripcion()%>">      
                        </div>
                    
                        <div class="mb-3">
                        <label for="precio" class="form-label"> Precio</label>
                        <input type="text" class="form-control" id="precio" name="precio" value="<%=resultado.getPrecio()%>">      
                        </div>
                    
                       <div class="mb-3">
                        <label for="stock" class="form-label"> Stock</label>
                        <input type="text" class="form-control" id="stock" name="stock" value="<%=resultado.getStock()%>">      
                       </div>
                    <button type="submit" class="btn btn-primary"> Modificar </button>    
                </form>     
            </div>   
        </div>
                       
                       <br>                    
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
