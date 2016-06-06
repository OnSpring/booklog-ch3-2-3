<%@ page pageEncoding="UTF-8"%> <!-- ① -->
<!DOCTYPE html>
<html> <!-- ② -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/webjars/bootstrap/bootstrap.min.css" />
<title>${title}</title> <!-- ③ -->
</head>
<body>
	<section class="container">
		<h1><%=request.getAttribute("title")%></h1> <!-- ④ -->
		<div>${message}</div> <!-- ⑤ -->
		<div>${nowDate}</div>
		<a href="/post/list" role="button" class="btn btn-info">List</a>
		<a href="/post/write"> <!-- ⑥ -->
			<button type="button" class="btn btn-success">Write</button>
		</a>
	</section>
	<footer class="container">
		<a href="http://bookonspring.com">BookOnSpring</a>
	</footer>
</body>
</html>
