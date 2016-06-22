package bloggyblues

class BloggyBlues {


	String postTitle
	String author
	Date creationDate
	String content
	


    static constraints = {
    	postTitle(blank:false)
    	author(blank:false)
    	creationDate(nullable:false)
    	content(blank:false)
    }
}
