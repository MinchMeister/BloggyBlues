<%@ page import="bloggyblues.BloggyBlues" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main" />
	<title>Blog Search</title>
</head>
<body>
<br/><br/>

		<g:each var="blog" in="${blogs}">
			<div class="blogResults">
				<h2>${blog.postTitle}</h2>
				<p>${blog?.content}</p>
			</div>
		</g:each>
</body>
</html>