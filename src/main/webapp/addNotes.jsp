<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Importing BootStrap CSS  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<title>Document</title>

</head>

<body class="bg-danger bg-opacity-25">
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>

	</div>
	<br>
	<br>
	<h2>Fill your note details</h2>
	<br>
	<div class="container">


		<!-- This is add form -->
		<form action="AddNotesServlet" method="post">
			<!-- Title -->
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> <input
					type="text" class="form-control" name="title" id="title"
					placeholder="Enter your title here" required autocomplete="off">
			</div>

			<!-- Content -->
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea name="content" id="content" class="form-control"
					style="height: 15rem;" placeholder=" Enter your content here"
					required></textarea>
			</div>

			<div class="container">
				<button type="submit" class="btn btn-success"
					style="display: inline-block;">Add</button>
				
			</div>
		</form>
	</div>
	<div style="text-align: center;">
            <h4 id="message"></h4>
        </div>
	<!-- Importing BootStrap javaScript -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>