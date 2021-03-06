
<div style="clear:both;">
	<hr>
	
	<button class="btn btn-primary" id="commentButton">Add a Comment</button>
	
	<div id="commentForm" style="clear:both;">
		<div class="message" id="commentMessage" style="display:none;"></div>
		<ul class="errors" id="commentErrors" style="display:none;"></ul>
		<g:render template="/comment/form" bean="${blogEntry}" var="blogEntry"/>
	</div>
	
	<ul id="commentList" style="clear:both;">
	</ul>
	
</div>		


<script type="text/javascript">
	$(function(){
		var updateCommentList = function(){
			$.ajax({
				data: "entryId=${blogEntry.id}",
				url : '<g:createLink action="list" controller="comment"/>',
				success: function(data){
					$("#commentForm").slideUp();
					$("#commentList").html("")
					$.each(data, function(){
						$("#commentList").append("<h4 id='commentName' class='nameComment'>" +'By: ' + this.name + "</h4>" + this.dateCreated + "<p class='commentStyle'>" + this.comment + "</p>").slideDown()
					});
				}
			})
		}
		 
	    $("#commentForm, #commentList").hide()
	    updateCommentList();
	    
	    $("#commentButton").click(function(evt){
		    evt.preventDefault()
		    $("#commentMessage, #commentErrors").html("").hide()
		    $("#commentForm form")[0].reset()
		    $("#commentForm").slideToggle()
		});
		$("#commentSaveForm").submit(function(evt){
			$("#commentMessage, #commentErrors").html("").hide()
			
			var $form = $(this)
			$.ajax({
				data: $form.serialize(),
				url : $form.attr("action"),
				type: $form.attr("method"),
				success: function(data){
					if(data.success){
						$("#commentMessage").text(data.message).show()
						updateCommentList();
					}else{
						$.each(data.errors.errors, function(){
							$("#commentErrors").append("<li>" + this.message + "</li>").show()
						})
					}
				}
			});	
			return false;		
		});
	});
</script>