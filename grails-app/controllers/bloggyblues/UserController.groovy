package bloggyblues

class UserController {

	def scaffold = User
  
	def login = {}
  
  	def register = {
        // new user posts his registration details
        if (request.method == 'POST') {
            // create domain object and assign parameters using data binding
            def u = new User(params)
            u.passwordHashed = u.password.encodeAsPassword()
            if (! u.save()) {
                // validation failed, render registration page again
                return [user:u]
            } else {
                // validate/save ok, store user in session, redirect to homepage
                session.user = u
                redirect(controller:'main')
            }
        } else if (session.user) {
            // don't allow registration while user is logged in
            redirect(controller:'main')
        }
    }
  
	def authenticate = {
    	def user = User.findByLoginAndPassword(params.login, params.password)
    	if(user){
        	session.user = user
      		flash.message = "Hello ${user.name}!"
      		redirect(controller:"bloggyBlues", action:"list")      
    	}else{
      		flash.message = "Sorry, ${params.login}. Please try again."
      		redirect(action:"login")
    	}
	}
  
	def logout = {
    	flash.message = "Goodbye ${session.user.name}"
    	session.user = null
    	redirect(controller:"entry", action:"list")      
  	}  
  	
  	def list = {
    	if(!params.max) params.max = 10
    	[bloggyBluesInstanceList: BloggyBlues.list(params)]
	}
}
