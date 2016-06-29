
<%@ page import="bloggyblues.BloggyBlues" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bloggyBlues.label', default: 'BloggyBlues')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create">New Blog</g:link></li>
			</ul>
		</div>
		<div id="show-bloggyBlues" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bloggyBlues">
			
				<g:if test="${bloggyBluesInstance?.postTitle}">
				<li class="fieldcontain">
					<span id="postTitle-label" class="property-label"><g:message code="bloggyBlues.postTitle.label" default="Post Title:" /></span>
					
						<span class="property-value" aria-labelledby="postTitle-label"><g:fieldValue bean="${bloggyBluesInstance}" field="postTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloggyBluesInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="bloggyBlues.author.label" default="Author:" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${bloggyBluesInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloggyBluesInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="bloggyBlues.creationDate.label" default="Creation Date:" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${bloggyBluesInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloggyBluesInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="bloggyBlues.content.label" default="Content:" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${bloggyBluesInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bloggyBluesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bloggyBluesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
