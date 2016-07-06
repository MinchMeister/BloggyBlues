<%@ page import="bloggyblues.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		
		
		
		<g:form role="form" class="jumbo" url="[resource:userInstance, action:'delete']" method="DELETE">
		
			<h2><g:message code="default.show.label" args="[entityName]" /></h2>

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<ol id="userInformationTable">
				<li id="userName">
					User name: <g:fieldValue bean="${userInstance}" field="login"/>
				</li>
			
				<li id="password">
					Password: <g:fieldValue bean="${userInstance}" field="password"/>
				</li>

				<li id="authorName">
					Author Name: <g:fieldValue bean="${userInstance}" field="name"/>
				</li>
			</ol>

			<g:link class="edit btn btn-primary" action="edit" resource="${userInstance}">
				<g:message code="default.button.edit.label" default="Edit" />
			</g:link>
			
			<g:actionSubmit class="delete btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		
		</g:form>
		
		
		
	</body>
</html>
