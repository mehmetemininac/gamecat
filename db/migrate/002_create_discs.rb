class CreateDiscs < ActiveRecord::Migration
  def self.up
    create_table :discs do |t|
      t.integer :number
      t.string :label
      t.integer :disktype_id
      t.boolean :given
      t.string :given_to
      t.datetime :gived_on
      t.integer :container_id
      t.text :comment
      t.timestamps
    end
  end
  
  def self.down
    drop_table :discs
  end
end
