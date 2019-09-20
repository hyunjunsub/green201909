package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DAO {
	
	/*
	 * Connection con; PreparedStatement ptmt; ResultSet rs; String sql;
	 * 
	 * public DAO() {
	 * 
	 * try { Context init = new InitialContext(); DataSource ds =
	 * (DataSource)init.lookup("java:/comp/env/mmm"); con = ds.getConnection(); }
	 * catch (Exception e) { // TODO Auto-generated catch block
	 * e.printStackTrace();;
	 * 
	 * } }
	 */
	
	
	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public DAO() {
		try {
			Context init = new InitialContext();
			DataSource ds =(DataSource)init.lookup("java:/comp/env/mmm");
			con = ds.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
