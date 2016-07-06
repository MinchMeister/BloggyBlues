<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bloggyBlues.label', default: 'BloggyBlues')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="create-bloggyBlues" class="content scaffold-create" role="main">
			<h2 class="pageHeaderTitles">Write a post</h2>
			
			
			
<g:if test="${flash.message}">
	<div class="message" role="status">
		${flash.message}
	</div>
</g:if>

<g:hasErrors bean="${bloggyBluesInstance}">
	<ul class="errors" role="alert">
		<g:eachError bean="${bloggyBluesInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
				<g:message error="${error}"/>
			</li>
		</g:eachError>
	</ul>
</g:hasErrors>
			
			<g:form role="form" class="jumbo" url="[resource:bloggyBluesInstance, action:'save']" >
				<g:render template="form"/>
				
				<g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</g:form>
			
		</div>
		
	</body>
</html>
