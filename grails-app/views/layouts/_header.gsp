<div class="header well container">
	
	<div class="col-md-12">
		<h1>BLOGGY BLUES FORUM</h1>
	</div>


	<div class="form-group row">
	
		<div class="col-md-2">
			<a href="${createLink(uri: '/')}">
				<g:img src="FroggyBlue.png" alt="FroggyBlue" id="FrogIcon" class="FroggyBlue" />
			</a>
		</div>
	
		<g:form controller="bloggyBlues" method="post">
			<div class="col-md-2">
				<input class="form-control" id="searchTextField" type='text' name='value' value="${value}"/>
			</div>
			<div class="col-md-2">
				<g:actionSubmit class="btn btn-primary" id="searchSubmit" value="Search"  />
			</div>
		</g:form>
	
		<div class="col-md-6">
		</div>
		<div class="col-md-2" id="loginHeader">		
			<g:loginControl/>
		</div>
		
	</div>
	
	
		
	
</div>