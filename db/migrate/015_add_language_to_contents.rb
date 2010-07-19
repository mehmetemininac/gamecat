class AddLanguageToContents < ActiveRecord::Migration
  def self.up
    add_column :contents, :language, :string
  end

  def self.down
    remove_column :contents, :language
  end
end
