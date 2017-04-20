<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.sql.rowset.*" %>
<%@ page import="com.sun.rowset.*" %>
<html>
<head>
</head>
<body>
	<%
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/sek091";
	JdbcRowSet rs=new JdbcRowSetImpl();
	rs.setUrl(url);
	rs.setUsername("root");
	rs.setPassword("pandu123");
	rs.setCommand("select * from temp");
	rs.execute();
	while(rs.next())
	{%>
	<h1><%=rs.getInt("id")+" "+rs.getString("name")%></h1>
	
	<%}
	}
	catch(Exception e)
	{%>
	<h2><%=e+" " %></h2>
	<%}%>
</body>
</html>