package bloggyblues

class User {

	String login
	String password
	String name
	
	static searchable = true
	
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
