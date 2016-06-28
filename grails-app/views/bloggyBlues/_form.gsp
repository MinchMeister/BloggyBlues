<%@ page import="bloggyblues.BloggyBlues" %>

<div class="fieldcontain ${hasErrors(bean: bloggyBluesInstance, field: 'postTitle', 'error')} required">
	<label for="postTitle">
		<g:message code="bloggyBlues.postTitle.label" default="Post Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postTitle" required="" value="${bloggyBluesInstance?.postTitle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bloggyBluesInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="bloggyBlues.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${session.user}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bloggyBluesInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="bloggyBlues.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${bloggyBluesInstance?.creationDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: bloggyBluesInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="bloggyBlues.content.label" default="Content" />
		
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="5000" value="${bloggyBluesInstance?.content}"/>

</div>

