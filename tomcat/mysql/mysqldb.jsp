<%@ page import = "java.sql.*" %>
<%
	Statement stm = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	String myUrl = "jdbc:mysql://localhost/mysql";
	Connection conn = DriverManager.getConnection(myUrl, "test", "testtest");
	try {
        	stm = conn.createStatement();
        	if(stm.execute("select * from user")) {
                	rs = stm.getResultSet();
        }
        while(rs.next()) {
                out.println(rs.getString("Host"));
                out.println(rs.getString("User"));
                out.write("<br>");
        }
        rs.close();
        stm.close();
}
catch(Exception e) {
        out.println("rs.next() ERROR");
}
conn.close();
%>
