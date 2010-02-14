class CreateMediatypes < ActiveRecord::Migration
  def self.up
    create_table :mediatypes do |t|
      t.string :name
      t.string :shortname
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :mediatypes
  end
end
