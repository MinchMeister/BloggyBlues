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
}
