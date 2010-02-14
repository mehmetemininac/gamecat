class CreateContainertypes < ActiveRecord::Migration
  def self.up
    create_table :containertypes do |t|
      t.string :name
      t.string :shortname

      t.timestamps
    end
  end

  def self.down
    drop_table :containertypes
  end
end
