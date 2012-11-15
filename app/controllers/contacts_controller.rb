class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		if @contact.save
			# Notify the user with the wishes by sending him/her an email
			ContactMailer.send_a_wish(@contact).deliver
			flash[:notice] = "Thanks for the Wishes!"
			redirect_to :controller => "home", :action => "index"
		else
		end
		
	end

end
