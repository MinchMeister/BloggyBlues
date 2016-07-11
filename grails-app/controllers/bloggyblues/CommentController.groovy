package bloggyblues

import grails.converters.JSON

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CommentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def list() {
		def comments = [];
		BloggyBlues entry = BloggyBlues.get(params.entryId)
		if(entry){
			comments = Comment.findAllByEntry(entry)
		}
		render comments as JSON
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Comment.list(params), model:[commentInstanceCount: Comment.count()]
    }

    def show(Comment commentInstance) {
        respond commentInstance
    }

    def create() {
        respond new Comment(params)
    }

    @Transactional
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

    def edit(Comment commentInstance) {
        respond commentInstance
    }

    @Transactional
    def update(Comment commentInstance) {
        if (commentInstance == null) {
            notFound()
            return
        }

        if (commentInstance.hasErrors()) {
            respond commentInstance.errors, view:'edit'
            return
        }

        commentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Comment.label', default: 'Comment'), commentInstance.id])
                redirect commentInstance
            }
            '*'{ respond commentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Comment commentInstance) {

        if (commentInstance == null) {
            notFound()
            return
        }

        commentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Comment.label', default: 'Comment'), commentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'comment.label', default: 'Comment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
