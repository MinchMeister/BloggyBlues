<html>
  <head>
    <meta name="layout" content="main" />
    <title>Register</title>         
  </head>
<body>

		<div class="body">
			<g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			</g:if>
			
			<g:form action="register" method="post">
			
		
		</div>

	  <fieldset>
	    <legend>User Registration</legend>
	    <p class="info">
	      Complete the form below to create an account.
	    </p>
	    <g:hasErrors bean="${user}">
	      <div class="errors">
	        <g:renderErrors bean="${user}"/>
	      </div>
	    </g:hasErrors>
	    <p>
	      <label for="login">Login</label>
	      <g:textField name="login" value="${user?.login}"
	        class="${hasErrors(bean:user,field:'login','errors')}"/>
	    </p>
	    <p>
	      <label for="password">Password</label>
	      <g:passwordField name="password"
	        class="${hasErrors(bean:user,field:'password','errors')}" />
	    </p>
	    <p>
	      <label for="confirm">Confirm Password</label>
	      <g:passwordField name="confirm"
	        class="${hasErrors(bean:user,field:'password','errors')}" />
	    </p>
	    <p>
	      <label for="name">Display Name</label>
	      <g:textField name="name" value="${user?.name}"
	        class="${hasErrors(bean:user,field:'name','errors')}" />
	    </p>
	    <p class="button">
	      <label>&nbsp;</label>
	      <g:submitButton class="button" name="submitButton" value="Create Account" />
	    </p>
	  </fieldset>
	
</body>
</html>