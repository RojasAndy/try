package datos;
import java.sql.*;

import javax.swing.JOptionPane;

public class trabajandoDatabase {
	public Connection conn;
	public Statement sen;
	public PreparedStatement sen2;
	public ResultSet data;
	public String driver="com.mysql.cj.jdbc.Driver";
	public String base="jdbc:mysql://localhost/empresa";
    public String usuario="root";
    public String clave="";
    
    public Connection conexion() {
    	try {
    		Class.forName(driver);
    		conn=DriverManager.getConnection(base,usuario,clave);
    	    JOptionPane.showMessageDialog(null,"Conexion OK");
    	}catch(ClassNotFoundException e1) {
    		JOptionPane.showMessageDialog(null,"Error en el driver" +e1);  		
    	}catch(SQLException e2) {
    		JOptionPane.showMessageDialog(null,"Error en la conexion" +e2);
    	}
    	return conn;
    }
    
    public ResultSet consulta(String codigosql) {
    	try {
    		sen=conexion().createStatement();
    		data=sen.executeQuery(codigosql);
    	}catch(SQLException e3) {
    		JOptionPane.showMessageDialog(null,"Error en la consulta" +e3);
    	}
    	return data;
    }
    
    public boolean registrar(int codigov, String apellidosv, String nombresv, String sexov, String ocupacionv, String afpv) {
    	try {
    		String codigosql="insert into empleados values(?, ?, ?, ?, ?, ?)";
    		sen2=conexion().prepareStatement(codigosql);
    		sen2.setInt(1, codigov);
    		sen2.setString(2, apellidosv);
    		sen2.setString(3, nombresv);
    		sen2.setString(4, sexov);
    		sen2.setString(5, ocupacionv);
    		sen2.setString(6, afpv);
    		sen2.executeUpdate();
    	}catch(SQLException e3) {
    		JOptionPane.showMessageDialog(null, "Error en el proceso de registro" );
    	}
    	return true;
    }
    public boolean editar(int codex, String apeex, String nomex, String sexex, String ocuex, String afpex) {    	
    	try {
    		String codigosql2="update empleados set apellidos=?, nombres=?, sexo=?, ocupacion=?, afp=? where codigo=?";
    		sen2=conexion().prepareStatement(codigosql2);
    		sen2.setString(1, apeex);
    		sen2.setString(2, nomex);
    		sen2.setString(3, sexex);
    		sen2.setString(4, ocuex);
    		sen2.setString(5, afpex);
    		sen2.setInt(6, codex);
    		sen2.executeUpdate();
    	}catch(SQLException e5) {
    		JOptionPane.showMessageDialog(null, "Erro en SQL");
    	}
    	catch(NumberFormatException e6) {
    		JOptionPane.showMessageDialog(null, "Error en el n'umero"+e6);
    	}
    	return true;
    }
    public boolean eliminar(int codigg) {
    	try {
    		String codigosql3="delete from empleados where codigo=? ";
    		sen2=conexion().prepareStatement(codigosql3);
    		sen2.setInt(1, codigg);
    		sen2.executeUpdate();
    	}catch(NumberFormatException e7){
			JOptionPane.showMessageDialog(null,"Error en el n'umero "+e7);
    	}catch(SQLException e8) {
    		JOptionPane.showMessageDialog(null, "Error en SQL"+e8);
    	}
    	return true;
    }
}
