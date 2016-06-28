package bloggyblues

class User {

	String login
	String password
	String name
	
	static constraints = {
	    login(unique:true)
	    password(password:true)
	    name()
	}
	  
	static hasMany = [blogs:BloggyBlues]
  
	
  
  	String toString(){
    	name
	}
}
