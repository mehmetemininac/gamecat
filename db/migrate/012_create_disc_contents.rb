class CreateDiscContents < ActiveRecord::Migration
  def self.up
    create_table :disc_contents do |t|
      t.integer :disc_id
      t.integer :content_id
    end
  end

  def self.down
    drop_table :disc_contents
  end
end
