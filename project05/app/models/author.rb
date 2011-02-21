class Author < ActiveRecord::Base
	validates_presence_of :name
	validate :no_sally_name
	has_many :articls

	has_attached_file :photo, 
					  :styles=> { :small => ["72 X 72", :gif], :mini => ["24 X 24", :gif]}, :url => 'asserts/:class/:attachment/:id/:style/:filename',
					  :default_url => '/images/picture.png'
	

	cattr_reader :per_page
	@@per_page = 10
	
	
	private
	
	def no_sally_name
		#errors.add_to_base('No Sally''s can be the author!') if name.downcase.include? 'sally'
	end
end
