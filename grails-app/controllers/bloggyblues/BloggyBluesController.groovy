package bloggyblues

class BloggyBluesController {

	def scaffold = BloggyBlues
	
	def hello(){
		render "hello"
	}
	
	def search = {
		def blogs = BloggyBlues.findAllByPostTitleIlike("${params.value}%")
		render(view:'search', model: [value: params.value, blogs: blogs])
	}
	
}