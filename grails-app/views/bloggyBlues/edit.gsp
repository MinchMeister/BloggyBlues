<%@ page import="bloggyblues.BloggyBlues" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bloggyBlues.label', default: 'BloggyBlues')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="edit-bloggyBlues" class="content scaffold-edit" role="main">
			<h2 class="pageHeaderTitles">Edit Blog Post</h2>
			


//make a template of this		
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
				
				
				
				
			<g:form role="form" class="jumbo" url="[resource:bloggyBluesInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${bloggyBluesInstance?.version}" />
				
				<g:render template="form"/>
				
				<g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
			</g:form>
				
				
				
		</div>
	</body>
</html>
