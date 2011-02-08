class Articl < ActiveRecord::Base
validates_presence_of :title, :author, :body, :date
validate :no_sally


	def no_sally
	errors.add_to_base('No Sally''s can be authors.') if author.downcase.include? 'sally'
	
	end
	def updater
	
	end
end
