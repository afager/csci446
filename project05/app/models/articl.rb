class Articl < ActiveRecord::Base
validates_presence_of :title,:body


#before_save :increment_update_count

belongs_to :author

	#def no_sally---Moved to author.rb
	#errors.add_to_base('No Sally''s can be authors.') if author.downcase.include? 'sally'
	#end

	cattr_reader :per_page
	@@per_page = 10
	
end
