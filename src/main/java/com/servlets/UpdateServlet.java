package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import com.entity.Note;
import com.helper.FactoryProvider;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			int noteId = (Integer) session.getAttribute("note_id");
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			// Using hibernate to update data
			Session hiberSession = FactoryProvider.getFactory().openSession();
			Note note = hiberSession.get(Note.class, noteId);
			note.setTitle(title);
			note.setContent(content);
			note.setAddedDate(new Date());

			hiberSession.beginTransaction().commit();
			hiberSession.close();

			//			Redirecting to show notes page
			response.sendRedirect("showNotes.jsp");
		} catch (Exception e) {
			System.out.println("Error while Updating Note");
			e.printStackTrace();
		}
	}

}
