class CreateArticls < ActiveRecord::Migration
  def self.up
    create_table :articls do |t|
      t.string :title
      t.string :author
      t.string :body
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :articls
  end
end
