class AddLocationToDisc < ActiveRecord::Migration
  def self.up
    add_column :discs, :location, :string
  end

  def self.down
    remove_column :discs, :location
  end
end
