package bloggyblues

class BloggyBlues {

	String postTitle
	String author
	Date dateCreated
	Date lastUpdated
	String content
	
	static hasMany = [comments: Comment]
	
    static constraints = {
    	postTitle(blank:false)
    	author(blank:false)
    	dateCreated()
    	lastUpdated()
    	content(maxSize:5000, nullable:true)
    }
    
    static mapping = {
    	sort dateCreated : "desc"
    }
    
    //todo possibly not needed
    static belongsTo = [author:User]

	
  }