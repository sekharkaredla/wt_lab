<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.sql.rowset.*" %>
<%@ page import="com.sun.rowset.*" %>
<html>
<head>
</head>
<body>
		<h1>JSP INSERT AND EXTRACT</h1>
	<form method="get" action="insert_and_extract.jsp">
	name:<input type="text" name="name"/><br/>
	id:<input type="text" name="id"/><br/>
	<input type="submit" name="go"/>
		<%
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		if(name!=null && id!=null)
		{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/sek091";
			Connection conn=DriverManager.getConnection(url,"root","jojjujojju");
			int i=Integer.parseInt(id);
			PreparedStatement ps=conn.prepareStatement("insert into temp(name,id) values(?,?)");
			ps.setString(1,name);
			ps.setInt(2,i);
			ps.executeUpdate();
			conn.close();
			JdbcRowSet rs=new JdbcRowSetImpl();
			rs.setUrl(url);
			rs.setUsername("root");
			rs.setPassword("jojjujojju");
			rs.setCommand("select * from temp");
			rs.execute();
			while(rs.next())
			{%>
			<h1><%=rs.getInt("id")+" "+rs.getString("name")%></h1>
	
			<%}
		}
		catch(Exception e)
		{
		%><h3><%=e+" " %></h3>
		<% }} %>
		</form>
</body>
</html>
