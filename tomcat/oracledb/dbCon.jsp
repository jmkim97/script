<%@ page language="java" import="java.sql.*" %>
<%
String DB_URL = "jdbc:oracle:thin:@192.168.10.98:1521:ORCL";


String DB_USER    = "c##USER1"; // DB USER명
String DB_PASSWORD = "user1"; // 패스워드

Connection con = null;
Statement  stmt   = null;
ResultSet rs = null;
String sql=null;

try
 {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);   
  }catch(SQLException e){out.println(e);}
%>
