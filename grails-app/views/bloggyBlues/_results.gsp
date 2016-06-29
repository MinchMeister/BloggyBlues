<ol>
	<g:each var="blogs" in="${bloggyBlues}">
		<li>${blogs?.postTitle}
			<g:if test="${blogs.note}">- </g:if>
				${blogs?.content}
		</li>
	</g:each>
</ol>