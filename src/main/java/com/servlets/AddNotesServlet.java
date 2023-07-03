package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entity.Note;
import com.helper.FactoryProvider;

public class AddNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//
	//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//		response.getWriter().append("Served at: ").append(request.getContextPath());
	//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			//			Title and content fetching
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			//			Creating Entity Object
			Note note = new Note(title, content);

			// Creating Session object and saving note
			Session session = FactoryProvider.getFactory().openSession();
			session.save(note);
			session.beginTransaction().commit();
			session.close();

			//			Printing on screen
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<div style='text-align: center;'>\r\n" + "        <h3>Note added Successfully</h3>\r\n"
					+ "        <a style='margin-right: 2rem;' href='addNotes.jsp'>Go Back</a>\r\n"
					+ "        <a href='showNotes.jsp'>Show Notes</a>\r\n" + "    </div>");
		} catch (Exception e) {
			response.sendRedirect("addNotes.jsp");
			e.printStackTrace();
		}
	}

}
