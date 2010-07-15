class CreateContents < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.string :name
      t.integer :contenttype_id
      t.integer :gamegenere_id
      t.integer :contentcategory_id
      t.integer :disc_id
      t.boolean :cracked
      t.boolean :original
      t.integer :moviegenere_id
      t.string :moviequality
      t.integer :movieyear
      t.string :subtitules
      t.text :comment
      t.timestamps
    end
  end
  
  def self.down
    drop_table :contents
  end
end
