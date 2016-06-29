<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<g:javascript library="jquery" />
		<asset:stylesheet src="main.css"/>
		<g:layoutHead/>
	</head>
	<body>
	
		
			<div class="header">
				<h1>BLOGGY BLUES FORUM</h1>
				<div id="BloggyBlueLogo" role="banner">
					<a class="home" href="${createLink(uri: '/')}"><asset:image src="FroggyBlue.png" alt="FroggyBlue"/></a>
				</div>
				<a id="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
				<div id="loginHeader">
					<g:loginControl/>
				</div>
				<g:form controller="bloggyBlues" method="post" >
					<input id="searchTextField" type='text' name='value' value="${value}"/>
					<g:actionSubmit value="Search" id="searchSubmit"/>
				</g:form>
				</div>
		<div class="mainContent">
			<g:layoutBody/>
		</div>
		<div class="footer" role="contentinfo"><b>Minch'n'Schoen Conglomerate</b></div>		
		
	</body>
</html>
