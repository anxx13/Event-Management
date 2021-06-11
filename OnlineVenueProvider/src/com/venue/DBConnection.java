package com.venue;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class DBConnection {
	Connection con = null;
	  ResultSet rs = null;
	  Statement st = null;

	  public Connection getCon()
	  {
	    try
	    {
	      Class.forName("oracle.jdbc.driver.OracleDriver");
	      this.con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:XE","anxx","Pikachu8");
	      System.out.println(this.con + "connection created");
	    }
	    catch (Exception e)
	    {
	      System.out.println(e);
	    }
	    return this.con;
	  }
}
