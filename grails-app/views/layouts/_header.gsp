<div class="header">

    <div class="row">
		
		<div class="col-md-6 col-xs-12 vcenter">
			<h1><a href="${createLink(uri: '/')}" id="pageTitle">BLOGGY BLUES BLOG</a></h1>
		</div><!--
		
		--><div class="col-md-2 vcenter"></div><!--
        --><div class="col-md-4 col-xs-0 vcenter">
    			<div class="input-group">
    			<g:form controller="bloggyBlues" method="post">
					<input class="form-control" id="searchTextField" type='text' name='value' value="${value}" placeholder="Search for..."/>
					<span class="input-group-btn">
					   <g:actionSubmit class="btn btn-default" id="searchSubmit" value="Search"/>
					</span>
				</g:form>
      			
    		</div>
  		</div>
        
        
			
	</div>
			
	<div class="row">
			
        <div class="col-md-6 col-sm-0 col-xs-4"></div>
		
            <div id="loginHeader" class="col-md-6 col-sm-12 col-xs-12">		
                <g:loginControl/>
            </div>	
    </div>
</div>