<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.entity.*, com.helper.*, org.hibernate.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Note</title>
<!-- Importing BootStrap CSS  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>

<body class="bg-danger bg-opacity-25 ">
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>

	</div>
	<br>
	<br>
	<h2>Fill your note details</h2>
	<br>
	<!-- Getting the note that need to update -->
	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session hiberSession = FactoryProvider.getFactory().openSession();
	Note note = (Note) hiberSession.get(Note.class, noteId);
	session.setAttribute("note_id", note.getId());
	%>

	<div class="container">
		<!-- This is add form -->
		<form action="UpdateServlet" method="post">
			<!-- Title -->
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> 
				<input
					type="text" class="form-control" name="title" id="title"
					value="<%=note.getTitle()%>" required autocomplete="off">
			</div>

			<!-- Content -->
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea name="content" id="content" class="form-control"
					style="height: 15rem;" required><%=note.getContent()%></textarea>
			</div>

			<div class="container">
				<button type="UpdateNoteServlet?note_id=<%=note.getId()%>" class="btn btn-primary">Update</button>
			</div>
		</form>
	</div>

	<!-- Importing BootStrap javaScript -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>