<%@ page import="bloggyblues.BloggyBlues" %>

<div class="list">
	<g:each in="${bloggyBluesInstanceList}" status="i" var="bloggyBluesInstance">
		<div class="blog">
			  		
			<h2 id="${bloggyBluesInstance.postTitle}" class="blogTitle">
				<g:link action="show" id="${bloggyBluesInstance.id}" >
					${bloggyBluesInstance.postTitle}
				</g:link>
			</h2>
			
			<h3 id="${bloggyBluesInstance.id}" class="blogAuthor">
				By: ${bloggyBluesInstance.author}
			</h3>
			
			<p class="blogPost">
				${bloggyBluesInstance.content}
			</p>   
			
			<div id="creationDate" class="dateTime">Creation Date:         
				<g:formatDate date="${bloggyBluesInstance.dateCreated}" type="dateTime" style="MEDIUM"/>
			</div>
            
			<div id="lastUpdated" class="dateTime">Last Updated:
				<g:formatDate date="${bloggyBluesInstance.lastUpdated}" type="dateTime" style="MEDIUM"/>
			</div>
			
			
		</div>  
        <hr>
	</g:each>
</div>