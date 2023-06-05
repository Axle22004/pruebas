package utilitarios;
//1. Importar las librerias de JDBC
import java.sql.*;

public class ConexionBD {
     //2. Crear un procedimiento que retorne la conexion
    public  static Connection retornaConexion(){
            //a. Variables
            String bd="panaderia.accdb";
            String user="";
            String clave="";
            //b. Ruta de ubicación de la base de datos
            String  ruta="jdbc:ucanaccess://F:\\"+bd;
            Connection cn=null;
            try {//código a evaluar
                //Identificar a los driver instalados
                Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                //Conexion a la base de datos
                cn=DriverManager.getConnection(ruta);
                System.out.println("Conexion satisfactoria");
            } catch (Exception e) {//Muestra el error?
                System.out.println(e);
            }
                //Si todo marcha bien, retornar la conexion
            return cn;
    }
}
