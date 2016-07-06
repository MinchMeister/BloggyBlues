<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	

		<g:form role="form" class="jumbo" url="[resource:userInstance, action:'save']" >
		
			<h2><g:message code="default.create.label" args="[entityName]" /></h2>
		
			<g:render template="form"/>
			
			<g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
		</g:form>
	
	<br/>
	
	
	
	
	
//NOT ENTIRELY SURE IF ALL THIS CODE IS REALLY REALLY NEEDED!!
	
<g:if test="${flash.message}">
	<div class="message" role="status">
		${flash.message}
	</div>
</g:if>

<g:hasErrors bean="${userInstance}">
	<ul class="errors" role="alert">
		<g:eachError bean="${userInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
				<g:message error="${error}"/>
			</li>
		</g:eachError>
	</ul>
</g:hasErrors>
	
	
		
				
	</body>
</html>