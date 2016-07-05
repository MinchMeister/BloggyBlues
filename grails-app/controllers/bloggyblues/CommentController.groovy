package bloggyblues

import grails.converters.JSON

class CommentController {

    def list() {
		def comments = [];
		BloggyBlues entry = BloggyBlues.get(params.entryId)
		if(entry){
			comments = Comment.findAllByEntry(entry)
		}
		render comments as JSON
    }
	
	def save() {
		def model = [:]
		
		BloggyBlues entry = BloggyBlues.get(params.entryId)
		println entry
		def commentInstance = new Comment(params)
		commentInstance.entry = entry;
		commentInstance.name = session.user;
		if (!commentInstance.save(flush: true)) {
			model.success = false
			model.errors = commentInstance.errors
		}else{
			model.success = true;
			model.message = message(code: 'default.created.message', args: [message(code: 'comment.label', default: 'Comment'), commentInstance.id])
		}
		render model as JSON
	}
}
