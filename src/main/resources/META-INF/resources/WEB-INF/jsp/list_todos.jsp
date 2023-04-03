<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

<div class="container">
<h2 style="text-align:center;margin-top:50px;">Enter your Todos</h2>
<form action="/list-todos" method="post">
  <div class="form-group">
    <label for="id">Email address</label>
    <input type="text" class="form-control" id="id" name="id" placeholder="Enter you id">
  </div>
  <br>
  <div class="form-group">
    <label for="name">Password</label>
    <input type="text" class="form-control" id="name" placeholder="Enter your Name" name="name">
  </div>
  <br>
  <div class="form-group">
    <label for="description">Description</label>
    <input type="text" class="form-control" id="des" name="des" placeholder="Enter you task">
  </div>
  <br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>