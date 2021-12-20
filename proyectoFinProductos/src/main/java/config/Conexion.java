/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

/**
 *
 * @author Manuela
 */
public class Conexion {
    
    public String driver= "com.mysql.cj.jdbc.Driver";
    
    public Connection getConnection(){
    Connection conexion= null;
    try{
    Class.forName(driver);
    conexion= DriverManager.getConnection ("jdbc:mysql://localhost:3306/productosf", "root", "");
    }
    catch (ClassNotFoundException | SQLException e){
    System.out.println(e.toString());
    }
    return conexion;
    }
    
    
    public static void main(String[] args) throws SQLException{
        
       Connection conexion = null;
       Conexion con= new Conexion();
       conexion =con.getConnection();
       PreparedStatement ps;
       ResultSet rs;
       
       ps = conexion.prepareStatement("Select * FROM producto");
       
       rs= ps.executeQuery();
       
       while (rs.next()){
       
       int id = rs.getInt("id");
       String nombre = rs.getString("nombre");
       String descripcion = rs.getString("descripcion");
       double precio = rs.getDouble("precio");
       int stock = rs.getInt("stock");
       
       System.out.println("id: "+id+" nombre: "+nombre+" descripcion: "+descripcion+" precio: "+precio+" stock: "+stock);
       
       
       }
        
    }
    }
    
    
    
    
    
    
    

