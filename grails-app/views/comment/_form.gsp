<%@ page import="bloggyblues.Comment" %>


<g:form role="form" action="save" controller="comment" name="commentSaveForm">
	<g:hiddenField name="entryId" value="${blogEntry.id}"/>
		<div style="padding:10px;" class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} ">
		
			<div class="input">
				<g:textArea class="form-control" placeholder="Comment Here..." required="" rows="12" name="comment" value="${commentInstance?.comment}"/>
			</div>
			
		</div>
	<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" class="btn btn-primary"/>
</g:form>