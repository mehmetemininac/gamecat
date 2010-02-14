class CreateContainers < ActiveRecord::Migration
  def self.up
    create_table :containers do |t|
      t.string :label
      t.integer :mediatype_id
      t.integer :containertype_id
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :containers
  end
end
