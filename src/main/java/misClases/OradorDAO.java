
package misClases;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OradorDAO {
	
	Connection conexion = null;
	
	public OradorDAO() throws ClassNotFoundException {
		Conexion con = new Conexion();
		conexion = con.getConnection();
	}
	
	public List<Orador> listarOradores() {
		PreparedStatement ps;
		ResultSet rs;
		List<Orador> lista = new ArrayList<>();
		
		try {
			ps = conexion.prepareStatement("SELECT * FROM oradores");
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("id");
				String nombre = rs.getString("nombre");
				String apellido = rs.getString("apellido");
				String tematica = rs.getString("tematica");
				
				Orador orador = new Orador(id, nombre, apellido, tematica);
				
				lista.add(orador);
			}
			return lista;
		} catch(SQLException e) {
			System.out.println(e);
			return null;
		}
	}
	
	public boolean insertarOrador(Orador orador) {
		PreparedStatement ps;
		
		try {
			ps = conexion.prepareStatement("INSERT INTO oradores(nombre, apellido, tematica) VALUES(?, ?, ?)");
			ps.setString(1, orador.getNombre());
			ps.setString(2, orador.getApellido());
			ps.setString(3, orador.getTematica());
			
			ps.execute();
			
			return true;
		} catch(SQLException e) {
			System.out.println(e);
			return false;
		}
	}
	
	public boolean eliminarOrador(int _id) {
		PreparedStatement ps;
		
		try {
			ps = conexion.prepareStatement("DELETE FROM oradores WHERE id = ?");
			ps.setInt(1, _id);
			
			ps.execute();
			
			return true;
		} catch(SQLException e) {
			System.out.println(e);
			return false;
		}
	}
	
}
