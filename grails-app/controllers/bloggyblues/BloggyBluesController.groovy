package bloggyblues

class BloggyBluesController {

	def scaffold = BloggyBlues
	
	def search = {
		def blogs = BloggyBlues.findAllByPostTitleIlike("${params.value}%")
		render(view:'search', model: [value: params.value, blogs: blogs])
	}
	
}