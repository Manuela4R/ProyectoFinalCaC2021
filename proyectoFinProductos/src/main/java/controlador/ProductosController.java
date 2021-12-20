
package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Productos;
import modelo.ProductosDAO;

@WebServlet(name = "ProductosController", urlPatterns = {"/ProductosController"})
public class ProductosController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ProductosDAO productosDao = new ProductosDAO();
        String accion;
        RequestDispatcher dispatcher= null;
        accion = request.getParameter("accion");
        
        if(accion == null || accion.isEmpty()){
        dispatcher= request.getRequestDispatcher("Vistas/productos.jsp");
        }
        else if (accion.equals("modificar")){
        dispatcher = request.getRequestDispatcher("Vistas/modificar.jsp");
        } else if(accion.equals("actualizar")){
        int id= Integer.parseInt(request.getParameter("id"));
        String nombre= request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int stock= Integer.parseInt(request.getParameter("stock"));
        
        Productos producto = new Productos (id, nombre, descripcion, precio, stock);
        productosDao.actualizarProducto(producto);
        
        dispatcher = request.getRequestDispatcher("Vistas/productos.jsp");
        } else if(accion.equals("eliminar")){
        int id = Integer.parseInt(request.getParameter("id"));
        productosDao.eliminarProducto(id);
        
        dispatcher = request.getRequestDispatcher("Vistas/productos.jsp");
        } else if(accion.equals("nuevo")){
        dispatcher = request.getRequestDispatcher("Vistas/nuevo.jsp");
        }else if(accion.equals("insert")){
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int stock= Integer.parseInt(request.getParameter("stock"));
        
        Productos producto = new Productos (0, nombre, descripcion, precio, stock);
        productosDao.insertarProductos(producto);
        
        dispatcher = request.getRequestDispatcher("Vistas/productos.jsp");          
        }else{
        dispatcher = request.getRequestDispatcher("Vistas/productos.jsp");
        }
        dispatcher.forward(request, response);
          
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
