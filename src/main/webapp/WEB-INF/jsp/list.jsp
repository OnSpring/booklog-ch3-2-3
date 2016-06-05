<%@ page pageEncoding="UTF-8"%> <!-- ① -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- ① -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/webjars/bootstrap/bootstrap.min.css" />
<title>On Spring Post List</title>
</head>
<body>
	<section class="container">
		<div>
			<c:forEach var="post" items="${postList}"> <!-- ② -->
				<h2>${post.bookTitle}</h2>
				<div><fmt:formatDate value="${post.createdAt}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
				<a href="/post/${post.id}"> 
					<button type="button" class="btn btn-primary">Read</button>
				</a>
				<hr />
			</c:forEach>
		</div>
		<a href="/">
			<button type="button" class="btn btn-info">Main</button>
		</a>
		<a href="/post/write">
			<button type="button" class="btn btn-success">Write</button>
		</a>
	</section>
</body>
</html>
