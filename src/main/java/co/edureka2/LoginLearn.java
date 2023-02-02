package co.edureka2;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginLearn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {

		String Uname = req.getParameter("val1");
		String PassWord = req.getParameter("val2");

		JSP_JDBC ob = new JSP_JDBC();

		if (ob.check(Uname, PassWord)) {

			HttpSession session = req.getSession();
			session.setAttribute("Username", Uname);
			res.sendRedirect("Welcome.jsp");
		} else {
			res.sendRedirect("Login.jsp");
		}
	}
}
