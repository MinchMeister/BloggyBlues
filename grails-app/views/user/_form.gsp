<%@ page import="bloggyblues.User" %>

<br/>

<div class="form-group">
	<div class="row">
		<div class="col-md-4 fieldcontain ${hasErrors(bean: userInstance, field: 'login', 'error')} required">
			<g:textField class="form-control" name="login" required="" placeholder="User Name" value="${userInstance?.login}"/>
		</div>
		<div class="col-md-8">
		</div>
	</div>
	
	<br/>
	
	<div class="row">	
		<div class="col-md-4 fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
			<g:field class="form-control" type="password" name="password" required="" placeholder="Password" value="${userInstance?.password}"/>
		</div>
		<div class="col-md-8">
		</div>
	</div>
	
	<br/>
	
	<div class="row">
		<div class="col-md-4 fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
			<g:textField class="form-control" name="name" required="" placeholder="Author Name" value="${userInstance?.name}"/>
		</div>
		<div class="col-md-8">
		</div>
	</div>
</div>