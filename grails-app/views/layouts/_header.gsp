<div class="header">
	<h1>BLOGGY BLUES FORUM</h1>
	
	<div id="BloggyBlueLogo" role="banner">
		<a class="home" href="${createLink(uri: '/')}"><asset:image src="FroggyBlue.png" alt="FroggyBlue"/></a>
	</div>
	
	<a id="home" href="${createLink(uri: '/')}">
		<g:message code="default.home.label"/>
	</a>
	
	<div id="loginHeader">
		<g:loginControl/>
	</div>
	
	<g:form controller="bloggyBlues" method="post" >
		<input id="searchTextField" type='text' name='value' value="${value}"/>
			<g:actionSubmit value="Search" id="searchSubmit"/>
	</g:form>
</div>