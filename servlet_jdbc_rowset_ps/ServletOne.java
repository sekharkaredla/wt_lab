import java.io.*;
import java.sql.*;
import javax.sql.*;
import javax.sql.rowset.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.sun.rowset.*;
public class ServletOne extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)
	{
		try
		{
			res.setContentType("text/html");
			PrintWriter out=res.getWriter();
			String name=req.getParameter("name");
			String id=req.getParameter("id");
			int id1=Integer.parseInt(id);
			out.print(name+" "+id);
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sek091","root","jojjujojju");
			PreparedStatement ps=conn.prepareStatement("insert into temp(name,id) values(?,?)");
			ps.setString(1,name);
			ps.setInt(2,id1);
			ps.executeUpdate();
			conn.close();
			JdbcRowSet rs=new JdbcRowSetImpl();
			rs.setUrl("jdbc:mysql://localhost:3306/sek091");
			rs.setUsername("root");
			rs.setPassword("jojjujojju");
			rs.setCommand("select * from temp");
			rs.execute();
			while(rs.next())
			{
				out.print(rs.getString("name"));
				out.print(rs.getInt("id"));
			}

		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
