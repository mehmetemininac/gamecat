class AddGivenFieldsToContainer < ActiveRecord::Migration
  def self.up
    add_column :containers, :given, :boolean
    add_column :containers, :gave_to, :string
    add_column :containers, :given_on, :datetime
  end

  def self.down
    remove_column :containers, :given
    remove_column :containers, :gave_to
    remove_column :containers, :given_on
  end
end
