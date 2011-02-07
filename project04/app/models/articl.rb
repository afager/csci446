class Articl < ActiveRecord::Base
validates_presence_pf :title, :author, :body, :date
end
