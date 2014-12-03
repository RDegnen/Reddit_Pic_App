class LikesController < ApplicationController

	def index
		@likes = current_user.likes.all
	end
	
	def new
		@like = Like.new
	end	

	def create
		@like = Like.new(like_params)
		@like.user_id = current_user.id
		@like.save
	end

	def destroy
		@like = Like.find(params[:id])
    	@like.destroy
    	respond_to do |format|
    	  format.html { redirect_to likes_url, notice: 'Like was successfully destroyed.' }
    	  format.json { head :no_content }
    	end
  	end

	private

		def like_params
			params.require(:like).permit(:link)
		end
end