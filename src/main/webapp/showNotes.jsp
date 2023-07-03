<%@page import="com.entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Notes</title>
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
	<h3 class="container text-uppercase">All Notes:</h3>


	<div class="row">
		<div class="col-12">
			<%
			Session hiberSession = FactoryProvider.getFactory().openSession();
			Query query = hiberSession.createQuery("SELECT n FROM Note n ORDER BY n.id DESC");
			List<Note> list = query.list();
			for (Note note : list) {
			%>
			<div class="card m-4 p-2 bg-danger bg-opacity-25">
				<img src="img/notes.png" class="card-img-top"
					style="max-width: 2rem;">
				<div class="card-body p-2">
					<h5 class="card-title"><%=note.getTitle()%></h5>
					<p class="card-text"><%=note.getContent()%></p>
					<div>
						Date:-
						<%=note.getAddedDate().toString().substring(0, 11)%>
						&#9; Time:-
						<%=note.getAddedDate().toString().substring(10, 19)%>
					</div>
					<div>
						<a href="updateNote.jsp?note_id=<%=note.getId()%>"
							class="btn btn-primary btn-primary">Update</a> <a
							href="DeleteServlet?note_id=<%=note.getId()%>"
							class="btn btn-primary btn-danger">Delete</a>
					</div>
				</div>
			</div>
			<%
			}
			hiberSession.close();
			%>
		</div>
	</div>


	<!-- Importing BootStrap javaScript -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>