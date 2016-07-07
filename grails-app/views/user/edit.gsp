<%@ page import="bloggyblues.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	

		<g:render template="/user/error"/>	
	
		<g:form role="form" class="jumbo" url="[resource:userInstance, action:'update']" method="PUT" >
			<h2><g:message code="default.edit.label" args="[entityName]" /></h2>
		
		
			<g:hiddenField name="version" value="${userInstance?.version}" />
			
			<g:render template="form"/>
			
			<g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
			
		</g:form>
		
	</body>
</html>
