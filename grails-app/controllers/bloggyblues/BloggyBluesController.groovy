package bloggyblues

class BloggyBluesController {

	//def scaffold = true
	
	def index = {}
	
	def create = {}
	
	def save = {
		def blog = new BloggyBlues(params)
		blog.save flush:true, failOnError:true
		redirect action: "show", id: blog.id
	}
	
	def edit = {}
	
	def update = {}
	
	def show = {}
	
	def list = {}
	
	def delete = {}
	
}