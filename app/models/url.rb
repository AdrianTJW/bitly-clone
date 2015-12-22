
class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	before_save :shorten
	
	def shorten
		o = [('a'..'z'), ('A'..'Z'), (1..9)].map { |i| i.to_a }.flatten
		random = (0...10).map { o[rand(o.length)] }.join	
		self.shorturl = random #assigning shorturl
	end
end
