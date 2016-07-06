<%@ page import="bloggyblues.BloggyBlues" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bloggyBlues.label', default: 'BloggyBlues')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="jumbo">
		<g:if test="${session.user}">
			<g:link class="create btn btn-primary" action="create">New Blog</g:link>
		</g:if>

		<div class="mainContent">
			<g:render template="displayBlogs"/>
		</div> 
		
		<div class="col-md-12" id="multiplePages">
			<g:paginate total="${bloggyBluesInstanceCount ?: 0}" />
		</div>
		
	</div>
		
	</body>
</html>
