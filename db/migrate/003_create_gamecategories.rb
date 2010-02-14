class CreateGamecategories < ActiveRecord::Migration
  def self.up
    create_table :gamecategories do |t|
      t.string :name
      t.string :shortname

      t.timestamps
    end
  end

  def self.down
    drop_table :gamecategories
  end
end
