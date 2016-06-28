package bloggyblues

class UserController {

	def scaffold = User
  
	def login = {}
  
  
	def authenticate = {
    	def user = User.findByLoginAndPassword(params.login, params.password)
    	if(user){
        	session.user = user
      		redirect(controller:"bloggyBlues", action:"index")      
    	}else{
      		flash.message = "Sorry, ${params.login}. Please try again."
      		redirect(action:"login")
    	}
	}
  
	def logout = {
    	session.user = null
    	redirect(controller:"bloggyBlues", action:"index")      
  	}  
  	
  	def list = {
    	if(!params.max) params.max = 10
    	[bloggyBluesInstanceList: BloggyBlues.list(params)]
	}
}
