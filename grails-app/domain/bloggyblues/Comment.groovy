package bloggyblues

class Comment {

	String name
	String comment
	Date dateCreated
	BloggyBlues entry
	
	static belongsTo = BloggyBlues

    static constraints = {
    	name(blank:false)
    	comment(maxSize:5000, nullable:false)
    	dateCreated()
    }
    
    static mapping = {
    	sort dateCreated : "desc"
    }
    
}
