class CreateMoviegeneres < ActiveRecord::Migration
  def self.up
    create_table :moviegeneres do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :moviegeneres
  end
end
