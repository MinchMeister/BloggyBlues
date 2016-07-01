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
						$("#commentList").append("<li><div><span class='nameComment'>" + this.name + "</span><span class='dataComment'>" + this.dateCreated +"</span></div><pre>" + this.comment + "</pre></li>").slideDown()
					});
				}
			})
		}
		 
	    $("#commentForm, #commentList").hide()
	    updateCommentList();
	    
	    $("#addComment").click(function(evt){
		    evt.preventDefault()
		    $("#commentMessage, #commentErrors").html("").hide()
		    $("#commentForm form")[0].reset()
		    $("#commentForm").slideDown()
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