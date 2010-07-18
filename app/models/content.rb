# == Schema Information
# Schema version: 8
#
# Table name: contents
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  contenttype_id     :integer
#  gamegenere_id      :integer
#  contentcategory_id :integer
#  disc_id            :integer
#  cracked            :boolean
#  original           :boolean
#  moviegenere_id     :integer
#  moviequality       :string(255)
#  movieyear          :integer
#  subtitules         :string(255)
#  comment            :text
#  created_at         :datetime
#  updated_at         :datetime
#

class Content < ActiveRecord::Base
  attr_accessible :name, :contenttype_id, :gamegenere_id, :contentcategory_id, :disc_id, :cracked, :original, :moviegenere_id, :moviequality, :movieyear, :subtitules, :comment
end
