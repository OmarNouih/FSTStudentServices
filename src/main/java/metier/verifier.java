package metier;

import java.sql.*;

public class verifier {
	String email ;
	String password ;
	int APPOGGE;
	String cne;
	public verifier(String email , String password){
		
		this.email = email;
		this.password = password ;
	}
	public verifier() {
	}
	public verifier(int appogge , String cne){
		this.APPOGGE = appogge;
		this.cne = cne;
	}
	public int etudiantv() throws SQLException {
		int appo = 0;
		Connection con = Connect.getConnection();
		Statement s = con.createStatement();
		ResultSet res = s.executeQuery("SELECT APPOGGE FROM etudiant WHERE APPOGGE = '" + APPOGGE + "' AND CNE = '" + cne + "';");
		if(res.next()) {
			appo = res.getInt(1);
		}
		return appo;
	}
	public int test() throws SQLException {
		int id = 0 ;
		Connection con = Connect.getConnection();
		Statement s = con.createStatement();
		ResultSet res = s.executeQuery("SELECT ID FROM admin WHERE Email = '" + email + "' AND Password = '" + password + "';");
		if(res.next()) {
			id = res.getInt(1);
		}
		return id;
	}
	public boolean test2(int id) throws SQLException{
		boolean test = false ;
		Connection con = Connect.getConnection();
		Statement s = con.createStatement();
		ResultSet res = s.executeQuery("SELECT * FROM admin WHERE id = " + id );
		if(res.next()) {
			id = res.getInt(1);
			test = true ;
		}
		return test;
	}
}
