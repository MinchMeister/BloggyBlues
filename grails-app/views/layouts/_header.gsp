<div class="header">
	
	<div class="row">
		
		<div class="col-md-6">
			<h1><a href="${createLink(uri: '/')}">BLOGGY BLUES FORUM</a></h1>
		</div>
		
		
		
		<div id="loginHeader" class="col-md-6">		
			<g:loginControl/>
		</div>
			
	</div>

			
			
	<div class="row">
			
		<div class="col-lg-6">
		</div>
		<div class="col-lg-6">
    			<div class="input-group">
    			
    			<g:form controller="bloggyBlues" method="post">
					<input class="form-control" id="searchTextField" type='text' name='value' value="${value}"/>
					<span class="input-group-btn">
					<g:actionSubmit class="btn btn-primary form-control" id="searchSubmit" value="Search"/>
					</span>
				</g:form>
      			
      			
    		</div><!-- /input-group -->
  		</div>
	</div>	
			
			
			
	
	
</div>