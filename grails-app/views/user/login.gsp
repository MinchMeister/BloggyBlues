<html>
  <head>
    <meta name="layout" content="main" />
    <title>Login</title>         
  </head>
  <body>
  	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			<li><a class="create" href="${createLink(uri: '/user/create')}">Create Account</a></li>
		</ul>
	</div>
  
    <div class="body">
      <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
      </g:if>
      <g:form action="authenticate" method="post" >
        <div class="dialog">
          <table>
            <tbody>            
              <tr class="prop">
                <td class="name">
                  <label for="login">Login:</label>
                </td>
                <td>
                  <input type="text" id="login" name="login"/>
                </td>
              </tr> 
          
              <tr class="prop">
                <td class="name">
                  <label for="password">Password:</label>
                </td>
                <td>
                  <input type="password" id="password" name="password"/>
                </td>
              </tr> 
            </tbody>
          </table>
        </div>
        <div class="buttons">
          <span class="button">
            <input class="save" type="submit" value="Login" />
          </span>
        </div>
      </g:form>
    </div>
  </body>
</html>