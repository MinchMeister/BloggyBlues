<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main" />
	<title>Blog Search</title>
</head>
<body>
<br/><br/>

	<h2>Post Search</h2>
	<g:form controller="bloggyBlues" method="post" >
		<input type='text' name='value' value="${value}" />
		<g:actionSubmit value="Search" />
	</g:form>
	
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