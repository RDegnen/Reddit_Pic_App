Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :reddit, ENV['RPfJbME5UdAz0g'], ENV['FX5kGL1N0Wg98s78bqekbfIW7Bg']
end