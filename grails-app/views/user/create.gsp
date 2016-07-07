<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<g:render template="/user/error"/>

		<g:form role="form" class="jumbo" url="[resource:userInstance, action:'save']" >
		
			<h2><g:message code="default.create.label" args="[entityName]" /></h2>
		
			<g:render template="form"/>
			
			<g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
		</g:form>
				
	</body>
</html>