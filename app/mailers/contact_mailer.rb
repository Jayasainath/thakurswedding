class ContactMailer < ActionMailer::Base

  default from: "from@example.com"

  def send_a_wish contact
  	
  	@username   = contact.name
  	@user_email = contact.email
  	@user_wish  = contact.subject

  	mail(:to => "jayasainaths@gmail.com", :sub => "")
  	
  end

end
