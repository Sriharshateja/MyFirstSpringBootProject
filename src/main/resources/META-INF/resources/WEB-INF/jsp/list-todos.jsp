<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<h1 style="text-align:center;margin-top:50px;">Your Todos</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Task-Id</th>
					<th>Name</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.id}</td>
						<td>${todo.name}</td>
						<td>${todo.des}</td>
						<td><a href="delete-todo?id=${todo.id}"
							class="btn btn-warning">Delete ${todo.id}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="list_todos" class="btn btn-success">add Todo</a>

	</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>