class LikesController < ApplicationController

	def index
	end
	
	def new
		@like = Like.new
	end	

	def create
		@like = Like.new(like_params)
		#@like = Like.save
	end

	private

		def like_params
			params.require(:like).permit(:link)
		end
end

#look up remote true to form
#ajax forms