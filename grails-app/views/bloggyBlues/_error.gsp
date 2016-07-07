<g:if test="${flash.message}">
	<div class="message" role="status">
		${flash.message}
	</div>
</g:if>

<g:hasErrors bean="${bloggyBluesInstance}">
	<ul class="errors" role="alert">
		<g:eachError bean="${bloggyBluesInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
				<g:message error="${error}"/>
			</li>
		</g:eachError>
	</ul>
</g:hasErrors>