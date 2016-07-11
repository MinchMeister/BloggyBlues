package bloggyblues



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BloggyBluesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def search = {
		def bloggyBluesInstanceList = BloggyBlues.findAllByPostTitleIlike("${params.value}%")
		render(view:'index', model: [value: params.value, bloggyBluesInstanceList: bloggyBluesInstanceList])
	}

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BloggyBlues.list(params), model:[bloggyBluesInstanceCount: BloggyBlues.count()]
    }

    def show(BloggyBlues bloggyBluesInstance) {
        respond bloggyBluesInstance
    }

    def create() {
        respond new BloggyBlues(params)
    }

    @Transactional
    def save(BloggyBlues bloggyBluesInstance) {
        if (bloggyBluesInstance == null) {
            notFound()
            return
        }

        if (bloggyBluesInstance.hasErrors()) {
            respond bloggyBluesInstance.errors, view:'create'
            return
        }

        bloggyBluesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'bloggyBlues.label', default: 'BloggyBlues'), bloggyBluesInstance.id])
                redirect bloggyBluesInstance
            }
            '*' { respond bloggyBluesInstance, [status: CREATED] }
        }
    }

    def edit(BloggyBlues bloggyBluesInstance) {
        respond bloggyBluesInstance
    }

    @Transactional
    def update(BloggyBlues bloggyBluesInstance) {
        if (bloggyBluesInstance == null) {
            notFound()
            return
        }

        if (bloggyBluesInstance.hasErrors()) {
            respond bloggyBluesInstance.errors, view:'edit'
            return
        }

        bloggyBluesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BloggyBlues.label', default: 'BloggyBlues'), bloggyBluesInstance.id])
                redirect bloggyBluesInstance
            }
            '*'{ respond bloggyBluesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BloggyBlues bloggyBluesInstance) {

        if (bloggyBluesInstance == null) {
            notFound()
            return
        }

        bloggyBluesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BloggyBlues.label', default: 'BloggyBlues'), bloggyBluesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'bloggyBlues.label', default: 'BloggyBlues'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
