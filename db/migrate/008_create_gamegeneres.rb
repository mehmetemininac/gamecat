class CreateGamegeneres < ActiveRecord::Migration
  def self.up
    create_table :gamegeneres do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :gamegeneres
  end
end
