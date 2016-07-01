package bloggyblues

import grails.test.mixin.TestFor
import grails.test.mixin.Mock
import spock.lang.Specification
import grails.test.mixin.domain.DomainClassUnitTestMixin
import grails.test.mixin.TestMixin
import grails.test.*

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(BloggyBluesController)
@Mock(BloggyBlues)
class BloggyBluesControllerSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test invalid save"() {
    	when:
    	controller.save()
    	
    	then:
    	model.bloggyBluesInstance != null
    	view == '/bloggyBlues/create'
    }
}
