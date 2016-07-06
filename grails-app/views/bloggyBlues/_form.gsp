<%@ page import="bloggyblues.BloggyBlues" %>


<div class="form-group">
	<div class="row">
		<div class="col-md-4 fieldcontain ${hasErrors(bean: bloggyBluesInstance, field: 'postTitle', 'error')} required">
			<g:textField name="postTitle" class="form-control" required="" placeholder="Title" value="${bloggyBluesInstance?.postTitle}"/>
		</div>
		
		<div class="col-md-8 fieldcontain ${hasErrors(bean: bloggyBluesInstance, field: 'author', 'error')} required">
			<g:hiddenField name="author" required="" value="${session.user}"/>
		</div>
	</div>
	
	<br/>
	
		<div class="fieldcontain ${hasErrors(bean: bloggyBluesInstance, field: 'content', 'error')} ">
			<g:textArea name="content" cols="40" rows="5" maxlength="5000" class="form-control" placeholder="Content Goes Here..." value="${bloggyBluesInstance?.content}"/>
		</div>
</div>
