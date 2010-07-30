# == Schema Information
# Schema version: 15
#
# Table name: contents
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  contenttype_id     :integer
#  gamegenere_id      :integer
#  contentcategory_id :integer
#  cracked            :boolean
#  original           :boolean
#  moviegenere_id     :integer
#  moviequality       :string(255)
#  movieyear          :integer
#  subtitules         :string(255)
#  comment            :text
#  created_at         :datetime
#  updated_at         :datetime
#  date               :datetime
#  language           :string(255)
#

class Content < ActiveRecord::Base
  attr_accessible :name, :contenttype_id, :gamegenere_id, :contentcategory_id, :disc_ids, :cracked, :original, :moviegenere_id, :moviequality, :movieyear, :subtitules, :comment, :language
  
  belongs_to :contenttype
  belongs_to :contentcategory  
  belongs_to :gamegenere
  has_many :disc_contents
  has_many :discs, :through => :disc_contents
  belongs_to :moviegenere
end
