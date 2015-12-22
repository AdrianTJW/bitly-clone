require_relative '../models/url'
# require 'byebug'

get '/' do
	@url = Url.all #assigning Url.all to @urls, so you dont run model in the view folder later.
  erb :"static/index"
end

post '/urls' do #create a new url
	x = Url.new(longurl: params[:long_url])
	x.shorten
	x.clickcount = 0
	x.save
	redirect to '/'
end

get '/:short_url' do #redirect to appropriate "long" URL
	a = Url.find_by(shorturl: params[:short_url])
	a.clickcount += 1
	# byebug
	a.save
	redirect a.longurl
end



# Another method to save
# def save
# 	Url.create(longurl: params[:long_url], shorturl: self.shorturl)
# end