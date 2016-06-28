<%@ page import="bloggyblues.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="user.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${userInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'blogs', 'error')} ">
	<label for="blogs">
		<g:message code="user.blogs.label" default="Blogs" />
		
	</label>
	<g:select name="blogs" from="${bloggyblues.BloggyBlues.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.blogs*.id}" class="many-to-many"/>

</div>

