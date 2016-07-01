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
					<li>
						<g:link class="create" action="create">New Blog</g:link>
					</li>
				</g:if>
			</ul>
		</div>
		
		
		<g:render template="displayBlogs"/>
			
			
			
		<div class="pagination">
			<g:paginate total="${bloggyBluesInstanceCount ?: 0}" />
		</div>
		
	</body>
</html>
