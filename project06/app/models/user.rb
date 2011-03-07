class User < ActiveRecord::Base
	acts_as_authentic
	attr_accessor :password
	
	validates_confirmation_of :password
	validates_presence_of :password#, on => :create
	validates_presence_of :email
	validates_presence_of :username
	validates_presence_of :Firstname
	validates_presence_of :Lastname
	validates_uniqueness_of :email, :username

	has_many :games
	has_many :roles#, :through=>assignments
	
	
	has_attached_file :photo, 
					  :styles => { :small => ["72x72", :gif], :mini => ["24x24", :gif]},
					  :url => '/assets/:class/:attachment/:id/:style/:filename',
					  :default_url => '/images/picture.png'
    
    
	cattr_reader :per_page
	@@per_page = 10
    
	def role_symbols
         [ role.name.downcase.to_sym ]
    end
	
	
end
