class AddDateToContent < ActiveRecord::Migration
  def self.up
    add_column :contents, :date, :datetime
  end

  def self.down
    remove_column :contents, :date
  end
end
