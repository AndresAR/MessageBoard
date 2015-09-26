class MessagesController < ApplicationController
	def index
	end

	def new
		@message = Message.new
	end

	def create
		@messsage = Messsag.new(message_params)
	end

	private

		def message_params
			params.requiere(:messsage).permit(:title, :description) 
		end
end
