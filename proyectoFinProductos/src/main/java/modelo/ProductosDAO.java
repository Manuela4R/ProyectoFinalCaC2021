
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuela
 */
public class ProductosDAO {
    Connection conexion;
    
    
   public ProductosDAO(){ 
    
    Conexion con= new Conexion();
    conexion = con.getConnection();
    
}
   
  public List<Productos> listarProductos(){ 
      PreparedStatement ps;
      ResultSet rs;
      List<Productos> lista = new ArrayList<>();    
      try{  
          ps = conexion.prepareStatement ("SELECT id, nombre, descripcion, precio, stock FROM producto");
          rs= ps.executeQuery();
          
          while(rs.next()){
          int id = rs.getInt("id");
          String nombre = rs.getString("nombre");
          String descripcion = rs.getString("descripcion");
          double precio = rs.getDouble ("precio");
          int stock = rs.getInt("stock");
          
          Productos productos = new Productos (id, nombre, descripcion, precio,stock);
          lista.add(productos);
          }  
           return lista;
      }
        catch (SQLException e){
        System.out.println(e.toString());
        return null;
        }
  } 
   
   
   public Productos mostrarProductos(int _id){
      PreparedStatement ps;
      ResultSet rs;
      Productos producto = null;
      
      try{
        ps = conexion.prepareStatement ("SELECT id, nombre, descripcion, precio, stock FROM producto WHERE id=?");
        ps.setInt(1, _id);  
        rs= ps.executeQuery();  
         
      while(rs.next()){
          int id = rs.getInt("id");
          String nombre = rs.getString("nombre");
          String descripcion = rs.getString("descripcion");
          double precio = rs.getDouble ("precio");
          int stock = rs.getInt("stock");
          
           producto = new Productos (id, nombre, descripcion, precio,stock);
      }
    return producto;    
      }
        catch (SQLException e){
            System.out.println(e.toString());
            return null;
            }
   }
   
   
  public boolean insertarProductos(Productos producto){
  PreparedStatement ps; 
  try{
      ps= conexion.prepareStatement("INSERT INTO producto(nombre, descripcion, precio, stock) VALUES (?,?,?,?)");
      ps.setString(1, producto.getNombre());
      ps.setString(2, producto.getDescripcion());
      ps.setDouble(3, producto.getPrecio());
      ps.setInt(4, producto.getStock());
      ps.execute();
      return true;
  }
  catch (SQLException e){
            System.out.println(e.toString());
            return false;
            }
  } 

public boolean actualizarProducto(Productos producto){
PreparedStatement ps;
try{
    ps = conexion.prepareStatement("UPDATE producto SET nombre=?, descripcion=?, precio=?, stock=? WHERE id=?");
      ps.setInt(1, producto.getId());  
      ps.setString(2, producto.getNombre());
      ps.setString(3, producto.getDescripcion());
      ps.setDouble(4, producto.getPrecio());
      ps.setInt(5, producto.getStock());
      
      ps.execute();
      return true;
}
 catch (SQLException e){
            System.out.println(e.toString());
            return false;
            }
}


public boolean eliminarProducto(int _id){
PreparedStatement ps;
try{
ps= conexion.prepareStatement("DELETE FROM producto WHERE id=?");
ps.setInt(1, _id);
ps.execute();
return true;
}
 catch (SQLException e){
            System.out.println(e.toString());
            return false;
            }
}



   
   
}
