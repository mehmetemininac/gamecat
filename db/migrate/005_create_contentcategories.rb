class CreateContentcategories < ActiveRecord::Migration
  def self.up
    create_table :contentcategories do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :contentcategories
  end
end
