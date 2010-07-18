class FixManyToManyRelation < ActiveRecord::Migration
  def self.up
    remove_column :contents, :disc_id
  end

  def self.down
    add_column :contents, :disc_id, :integer
  end
end
