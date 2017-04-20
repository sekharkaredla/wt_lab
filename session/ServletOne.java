import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ServletOne extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)
	{
		try
		{
			res.setContentType("text/html");
			PrintWriter out=res.getWriter();
			String e=req.getParameter("em");
			String p=req.getParameter("pass");
			if(e.equals("sekhar@cbit.ac.in") && p.equals("sekhar"))
			{
				HttpSession session=req.getSession();
				session.setAttribute("name","sekhar");
			}
			out.print("<a href='servlettwo'>go</a>");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}