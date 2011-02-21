class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table :authors do |t|
      t.string :name, :null => false
      t.timestamps
    end
	add_column :articls, :author_id, :integer
	
	Articl.all.each do |article|
		author=Author.create(:name => article.author)
		article.author = author
		article.save
	end
	
	remove_column :articls, :author
	
  end

  def self.down
    drop_table :authors
  end
end
