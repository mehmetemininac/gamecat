class CreateContents < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.string :title
      t.integer :gametype_id
      t.text :content_data
      t.integer :contenttype_id
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :contents
  end
end
