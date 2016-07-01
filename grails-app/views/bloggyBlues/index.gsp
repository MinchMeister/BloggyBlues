<%@ page import="bloggyblues.BloggyBlues" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bloggyBlues.label', default: 'BloggyBlues')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
				<g:if test="${session.user}">
					<li><g:link class="create" action="create">New Blog</g:link></li>
				</g:if>
			</ul>
		</div>
			<div class="list">
			 	<g:each in="${bloggyBluesInstanceList}" status="i" var="bloggyBluesInstance">
			  		<div class="blog">
			   			<h2 class="blogTitle" id="${bloggyBluesInstance.postTitle}"><g:link action="show" id="${bloggyBluesInstance.id}" >${bloggyBluesInstance.postTitle}</g:link></h2>
			   			<h3 id="${bloggyBluesInstance.id}" class="blogAuthor">By: ${bloggyBluesInstance.author}</h3>
			   			<span>Date posted: ${bloggyBluesInstance.dateCreated}</span>
			   			<div class="blogPost">${bloggyBluesInstance.content}</div>                
			  		</div>  
			 	</g:each>
			</div>
			
			<div class="pagination">
				<g:paginate total="${bloggyBluesInstanceCount ?: 0}" />
			</div>
		
	</body>
</html>
