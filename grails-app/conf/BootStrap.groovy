import grails.util.*
import bloggyblues.*

class BootStrap {

    def init = { servletContext ->
		new User(login: 'admin', password: 'admin', name: 'phil').save()
		
		def entry2 = new BloggyBlues(postTitle: 'Hello World', author: 'phil', content: 'Welcome to the bloggy blues blog.').save()
		def entry3 = new BloggyBlues(postTitle: 'Brad sits to my left', author: 'phil', content: 'martin sits to my right').save()
		def entry4 = new BloggyBlues(postTitle: 'Bathroom breaks', author: 'phil', content: 'I have drank way too much water today, causing me to break frequently').save()
		def entry5 = new BloggyBlues(postTitle: 'Sanwiches', author: 'phil', content: 'Today I had a peanut butter and jelly sandwich for lunch this afternoon').save()
		def entry6 = new BloggyBlues(postTitle: 'Sandwiches original', author: 'phil', content: 'Over the weekend, I had an amazing burger from B Spot in Strongsville, Ohio.').save()
		def entry7 = new BloggyBlues(postTitle: 'Dinner this evening', author: 'phil', content: 'I\'m planning on eating chipotle tonight after my workout.').save()
		def entry8 = new BloggyBlues(postTitle: 'Spotify', author: 'phil', content: 'I think spotify is awesome. Buyig premium was a big move for the family.').save()
		def entry9 = new BloggyBlues(postTitle: 'Finding Dory', author: 'phil', content: 'finding dory lived up to the expectations set from Finding Nemo. Very impressed.').save()
		def entry10 = new BloggyBlues(postTitle: 'Zauber', author: 'phil', content: 'Zauber is a local brewery in Grandview that has outstanding beer.').save()
		def entry11 = new BloggyBlues(postTitle: 'Workt', author: 'phil', content: 'this blog is mad dope and contains lots of informative content that the world needs.').save()
		
		sleep(1000);
		def entry1 = new BloggyBlues(postTitle: 'Automated Test', author: 'phil', content: 'Automated Test').save()
		new Comment(entry: BloggyBlues.findAllByPostTitle('Automated Test'), comment: 'This is my test comment', name: 'phil').save()
    }
    def destroy = {
    }
}
