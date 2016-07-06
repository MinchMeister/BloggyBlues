<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
		<title>Login</title>         
	</head>
	<body>
       
		 <br/>       
	     <g:form role="form" action="authenticate" method="post" class="jumbo">
	     
	    	 <h2><g:message code="default.login.label" args="[entityName]" /></h2>
	     
	     
		     <g:if test="${flash.message}">
		    	<div class="message"><h4>${flash.message}</h4></div>
		     </g:if>
	     
	     
	     
	     
	     
	     
			<div class="form-group">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="login" name="login" placeholder="User Name" required=""/>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
					</div>
				</div>
				<br/>
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<input type="password" class="form-control" id="password" name="password" placeholder="Password" required=""/>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
					</div>
				</div>
				
				
		    	<br/>
		    	
				<div class="row">     
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
				    	<g:submitButton name="Login" class="btn btn-primary" id="login" />
				    	
						<a class="create" href="${createLink(uri: '/user/create')}">
							<span class="btn btn-primary">Create Account</span>
						</a>
					</div>				
				</div>
	    	</div>
	    </g:form>
	    
	</body>
</html>