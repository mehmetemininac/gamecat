class CreateContenttypes < ActiveRecord::Migration
  def self.up
    create_table :contenttypes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :contenttypes
  end
end
