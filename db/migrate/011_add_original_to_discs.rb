class AddOriginalToDiscs < ActiveRecord::Migration
  def self.up
    add_column :discs, :original, :boolean, :default => false
  end

  def self.down
    remove_column :discs, :original
  end
end
