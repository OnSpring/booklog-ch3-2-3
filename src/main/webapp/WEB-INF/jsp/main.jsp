<%@ page pageEncoding="UTF-8"%> <!-- ① -->
<!DOCTYPE html>
<html> <!-- ② -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
</body>
</html>
