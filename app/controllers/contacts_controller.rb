class ContactsController < ApplicationController

	def index
		@contacts = Contact.all.order("created_at DESC")
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params_contact)
		if @contact.save
			flash[:success] = "Message sent successfully."
			redirect_to root_path
		else
			render 'new'
			flash[:danger] = "Errors Occured. Message could not send"
		end
	end
	
	private

	def params_contact
		params.require(:contact).permit(:name, :email, :comments)
	end

	def find_contact
		@contact = Contact.find(params[:id])
	end

end