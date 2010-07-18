class FixDiskOnDiscs < ActiveRecord::Migration
  def self.up
    remove_column :discs, :disktype_id
    add_column :discs, :disctype_id, :integer
  end

  def self.down
    add_column :discs, :disktype_id, :integer
    remove_column :discs, :disctype_id
  end
end
