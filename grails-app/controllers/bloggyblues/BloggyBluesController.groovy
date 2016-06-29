package bloggyblues

class BloggyBluesController {

	def scaffold = BloggyBlues
	
	def remoteSearch = {
		def blogs = BloggyBlues.findAllByNameLike("${params.value}%")
		render(template:'results', model: [value: params.value, blogs: blogs])
	}
	
}