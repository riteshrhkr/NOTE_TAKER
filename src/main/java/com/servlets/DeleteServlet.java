package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entity.Note;
import com.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session hiberSession = FactoryProvider.getFactory().openSession();
			Note note = (Note) hiberSession.get(Note.class, noteId);

			hiberSession.delete(note);
			hiberSession.beginTransaction().commit();
			hiberSession.close();
			response.sendRedirect("showNotes.jsp");

		} catch (Exception e) {
			System.out.println("Error while Deleting note");
			e.printStackTrace();
		}

	}

}
