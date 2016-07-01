<%@ page import="bloggyblues.BloggyBlues" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bloggyBlues.label', default: 'BloggyBlues')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>	
	</head>
	<body>
	
		
		
	<g:if test="${flash.message}">
		<div id="successfulPost">Your post has been submitted.</div>
	</g:if>
		
		
		<div class="blog">
		
			<h2 id="${bloggyBluesInstance.postTitle}" class="blogTitle">
				<g:link action="show" id="${bloggyBluesInstance.id}" >
					${bloggyBluesInstance.postTitle}
				</g:link>
			</h2>
			
			<h3 id="${bloggyBluesInstance.id}" class="blogAuthor">
				By: ${bloggyBluesInstance.author}
			</h3>
			
			<p>
				${bloggyBluesInstance.content}
			</p>   
			<div id="creationDate">Creation Date:         
				<g:formatDate date="${bloggyBluesInstance.dateCreated}" type="dateTime" style="MEDIUM"/>
			</div>
			<div id="lastUpdated">Last Updated:
				<g:formatDate date="${bloggyBluesInstance.lastUpdated}" type="dateTime" style="MEDIUM"/>
			</div>
		</div>
		

		
		
		 
		
		<g:form url="[resource:bloggyBluesInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${bloggyBluesInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				
				<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
		
	</body>
</html>
