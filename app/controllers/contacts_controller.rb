class ContactsController < ApplicationController

	def new
		@contact = Conract.new
	end

	def create
		@contact = Conract,new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = "cannot send message."
			render :new
		end
	end
end
