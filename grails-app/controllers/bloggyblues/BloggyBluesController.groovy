package bloggyblues

class BloggyBluesController {

	def scaffold = BloggyBlues
	
	def search = {
		def bloggyBluesInstanceList = BloggyBlues.findAllByPostTitleIlike("${params.value}%")
		render(view:'index', model: [value: params.value, bloggyBluesInstanceList: bloggyBluesInstanceList])
	}
}