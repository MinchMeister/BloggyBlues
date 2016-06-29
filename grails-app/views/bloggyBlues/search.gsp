<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main" />
	<title>Blog Search</title>
</head>
<body>
<br/><br/>

	
Results:
		<ol>
			<g:each var="blog" in="${blogs}">
				<li>${blog?.postTitle}
				<g:if test="${blog.content}">- </g:if>
					${blog?.content}
				</li>
			</g:each>
		</ol>
</body>
</html>