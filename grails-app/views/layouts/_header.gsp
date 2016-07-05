<div class="header">
	
	<div class="row">
		
		<div class="col-md-6 col-xs-12">
			<h1><a href="${createLink(uri: '/')}">BLOGGY BLUES FORUM</a></h1>
		</div>
		
		
		<div id="loginHeader" class="col-md-6 col-sm-12 col-xs-12">		
			<g:loginControl/>
		</div>
			
	</div>
			
	<div class="row">
			
		<div class="col-md-8 col-sm-2 col-xs-2">
		</div>
		<div class="col-md-4 col-sm-10 col-xs-10">
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