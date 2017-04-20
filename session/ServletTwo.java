import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ServletTwo extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)
	{
		try
		{
			res.setContentType("text/html");
			PrintWriter out=res.getWriter();
			HttpSession session=req.getSession(false);
			if(session==null)
			{
				out.print("wrong username or pass");
			}
			else
			{
			String name=(String)session.getAttribute("name");
			out.print(name);
			session.invalidate();
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}