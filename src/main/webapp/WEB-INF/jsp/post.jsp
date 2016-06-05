<%@ page pageEncoding="UTF-8"%> <!-- ① -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- ① -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/webjars/bootstrap/bootstrap.min.css" />
<title>${post.bookTitle}</title>
</head>
<body>
	<section class="container">
		<article>
			<h2>${post.bookTitle}</h2>
			<hr />
			<div>${post.content}</div>
			<div><fmt:formatDate value="${post.createdAt}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
		</article>	
		<a href="/post/list">
			<button type="button" class="btn btn-info">List</button>
		</a>
		<a href="/post/${post.id}/edit">
			<button type="button" class="btn btn-warning">Edit</button>
		</a>
		<a href="/post/${post.id}/delete" id="delete">
			<button type="button" class="btn btn-danger">Delete</button>
		</a>
	</section>
	<script src="/webjars/jquery/jquery.min.js"></script> <!-- ① -->
	<script type="text/javascript">
		$("#delete").click(function() { <!-- ② -->
			if (!confirm("정말로 삭제할까요?")) {
				return false;
			}
		});
	</script>
</body>
</html>
