class HomeController < ApplicationController
	
	def new_message
		@message = Message.new
	end

	def create_message
		@message = Message.new(message_params)
    if @message.save
    	redirect_to root_path
    end
    
	end

	private

		def message_params
			params.require(:message).permit(:title)
		end

end
