<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
		<title>Login</title>         
	</head>
	<body>
       
		 <br/>       
	     <g:form role="form" action="authenticate" method="post" class="jumbo">
	     
		     <g:if test="${flash.message}">
		    	<div class="message"><h4>${flash.message}</h4></div>
		     </g:if>
	     
	     
			<div class="form-group">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="login" name="login" placeholder="User Name"/>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<input type="password" class="form-control" id="password" name="password" placeholder="Password"/>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
					</div>
				</div>
				
		    	<br/>
		    	
				<div class="row col-md-4">     
			    	<input id="login" class="btn btn-primary" type="submit" value="Login"/>
			    	
					<a class="create" href="${createLink(uri: '/user/create')}">
						<span class="btn btn-primary">Create Account</span>
					</a>
				</div>
	    	</div>
	    </g:form>
	    
	</body>
</html>