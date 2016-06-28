package bloggyblues

class BloggyBlues {

	String postTitle
	String author
	Date creationDate
	String content
	
    static constraints = {
    	postTitle(blank:false)
    	author(blank:false)
    	creationDate()
    	content(maxSize:5000, nullable:true)
    }
    
    static mapping = {
    	sort "creationDate":"desc"
    }
    
    static belongsTo = [author:User]

  }