<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.sql.rowset.*" %>
<%@ page import="com.sun.rowset.*" %>
<html>
<head>
</head>
<body>
		<%
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		if(name!=null && id!=null)
		{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/sek091";
			Connection conn=DriverManager.getConnection(url,"root","pandu123");
			int i=Integer.parseInt(id);
			PreparedStatement ps=conn.prepareStatement("insert into temp(name,id) values(?,?)");
			ps.setString(1,name);
			ps.setInt(2,i);
			ps.executeUpdate();
			conn.close();
		}
		catch(Exception e)
		{
		%><h3><%=e+" " %></h3>
		<% }} %>
	</form>
	<form method="get" action="display_jsp.jsp">
		<input type="submit" value="view data"/>
	</form>
</body>
</html>