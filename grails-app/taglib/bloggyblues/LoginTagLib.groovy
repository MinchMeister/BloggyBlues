package bloggyblues

class LoginTagLib {
  def loginControl = {
    if(session.user){
      out << "Hello, ${session.user.name}"
      out << """${link(action:"logout", controller:"user", class:"btn btn-primary"){"Logout"}}"""
    } else {
      out << """${link(action:"login", controller:"user", class:"btn btn-default glyphicon glyphicon-log-in"){" Login"}}"""      
    }
  }
}