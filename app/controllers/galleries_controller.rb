class GalleriesController < ApplicationController

	def index
		@response = RestClient.get('https://api.imgur.com/3/gallery/r/pics/', Authorization: 'Client-ID 96b7bf7f245f91e')
		response_hash = JSON.parse(@response)
		@parsed = response_hash["data"]
		@mapped = @parsed.map { |k| [k['title'], k['link']] }
	end


end
