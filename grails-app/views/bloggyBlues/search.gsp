<%@ page import="bloggyblues.BloggyBlues" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="layout" content="main" />
		<title>Blog Search</title>
	</head>
	<body>
	
	

		<g:each in="${blogs}" var="bloggyBluesInstance" >
			<div class="blog">
				<h2 id="${bloggyBluesInstance.postTitle}" class="blogTitle">
				<g:link action="show" id="${bloggyBluesInstance.id}" >
					${bloggyBluesInstance.postTitle}
				</g:link>
				</h2>
				
				<h3 id="${bloggyBluesInstance.id}" class="blogAuthor">
					By: ${bloggyBluesInstance.author}
				</h3>
				
				<p class="blogPost">
					${bloggyBluesInstance.content}
				</p>   
				           
				<span>Date posted origin: ${bloggyBluesInstance.dateCreated}</span>
				<br/>
				<span>Date posted update: ${bloggyBluesInstance.lastUpdated}</span>
			</div>
		</g:each>
		
		
		
	</body>
</html>