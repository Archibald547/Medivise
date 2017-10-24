<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/statics/styles.css" />">
<title>${ question.title } | Forum | Medivise</title>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<ul class="nav" style="margin-right: auto !important;">
			<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath}/">Medivise</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/questions/">Forum</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/map/">Map</a></li>
		</ul>
		<c:if test="${username != null}">
			<span class="navbar-text"> <a href="${pageContext.request.contextPath}/profile/">${username}</a> </span>
		</c:if>
		<c:if test="${username == null}">
			<span class="navbar-text"><a href="${pageContext.request.contextPath}/login/">login</a></span>
		</c:if>
	</nav>
	
	<a href="..">Back to question list</a>
	<h1>${ question.title }</h1>

	<p>Description: ${ question.content }</p>
	<p>Created: ${question.created}</p>

	<form action="delete/" method="post">
		<input type="submit" value="Delete this question">
	</form>
	
	<h2>Comments</h2>
	<c:forEach items="${ comment }" var="c">
		<c:if test= "${c.questionId==question.id}">
		<hr>
		<div>
			<!-- 
			<h3>
				<a href="${ c.id }/">${ c.content }</a>
			</h3>
			
			 -->
			<p>Answer: ${c.content}</p>
			<p>Provided by: ${c.author}</p>
			<p>Created: ${c.created}</p>
		</div>
		</c:if>
	</c:forEach>
	<hr>
<<<<<<< Updated upstream

	<c:if test="${ auth != null }">
=======
	
>>>>>>> Stashed changes
	<h2>Post a new comment</h2>
	
		<form action="comment/" method="post">
			<textarea name="content"></textarea>
			<br> <input type="submit" value="Comment">
		</form>
	</c:if>

	<h2>Answers</h2>
	<c:forEach items="${ answers }" var="c">
		<hr>
		<div>
			<p>Answer: ${ c.content }</p>
			<p>Provided by: ${ c.user.username }</p>
			<p>Created: ${ c.created }</p>
		</div>
	</c:forEach>
	<hr>

<<<<<<< Updated upstream
	<c:if test="${ auth=='ROLE_DOCTOR' }">
		<form action="postanswer/" method="post">
			<textarea name="content"></textarea>
			<br> <input type="submit" value="Comment">
		</form>
	</c:if>

=======
	<form action="comment/" method="post">
		
		<textarea name="content"></textarea>
		<br> <input type="submit" value="Comment">
	</form>
	
	
	
	<!-- 
	<a href="comment/">Post a new comment</a>
	 -->
>>>>>>> Stashed changes
</body>
</html>
