<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main" />
	<title>BLog Find</title>
	<g:javascript library="jquery" />
</head>
<body>
		<h2>Ajax Search</h2>
	
		<g:formRemote name="remoteSearch" url="[controller:'bloggyBlues',action:'remoteSearch']" update="[success:'results', failure:'error']" >
			<input type='text' name='value' value="${value}" />
			<g:submitButton name="search" value="Search" />
		</g:formRemote>
	
		<div id="error"></div>
			Results:
		<div id="results"></div>
</body>
</html>