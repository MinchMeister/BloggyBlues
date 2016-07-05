<div class="header">

	<div class="form-group">
		<g:form controller="bloggyBlues" method="post">
			<div class="col-md-3">
				<input class="form-control" id="searchTextField" type='text' name='value' value="${value}"/>
			</div>
			<div class="col-md-7">
				<g:actionSubmit class="btn btn-primary" id="searchSubmit" value="Search"  />
			</div>
		</g:form>
	
		<div class="col-md-2">		
			<g:loginControl/>
		</div>
		
	</div>
	
	
	
	
	<div class="form-group">
		
		<div class="col-md-6">
			<h1>BLOGGY BLUES FORUM</h1>
		</div>
		
		<div class="col-md-6">
			<a href="${createLink(uri: '/')}">
				<g:img src="FroggyBlue.png" alt="FroggyBlue" style="FroggyBlue" />
			</a>
		</div>
	
	</div>
</div>