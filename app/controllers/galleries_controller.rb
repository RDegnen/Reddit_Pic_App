class GalleriesController < ApplicationController

	def index
		@response = RestClient.get('https://api.imgur.com/3/gallery/r/pics/', Authorization: 'Client-ID 96b7bf7f245f91e')
	end


end