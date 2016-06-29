package bloggyblues

class BloggyBlues {

	String postTitle
	String author
	Date dateCreated
	Date lastUpdated
	String content
	
	
    static constraints = {
    	postTitle(blank:false)
    	author(blank:false)
    	dateCreated()
    	lastUpdated()
    	content(maxSize:5000, nullable:true)
    }
    
    static mapping = {
    	sort "dateCreated":"desc"
    }
    
    static belongsTo = [author:User]

  }