<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
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

	<div class="container m-5 d-flex justify-content-center">

		<div class="card " style="width: 20rem; --bs-card-border-color: rgb(246 204 208);">
			<img src="img/images.jpeg" class="card-img-topj img-fluid" alt="..." style="height: 20rem;">
			<div class="card-body bg-danger bg-opacity-25 ">
				<h5 class="card-title">Welcome to NoteTaker</h5>
				<p class="card-text">Here you can store your daily notes. You
					can Delete, Update or Add notes very easy way.</p>
				<a href="addNotes.jsp" class="btn btn-primary me-5">Add Note</a>
				<a href="showNotes.jsp" class="btn btn-primary ms-4">View Notes</a>
			</div>
		</div>

	</div>
	<!-- Importing BootStrap javaScript -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>