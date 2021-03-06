# == Schema Information
# Schema version: 15
#
# Table name: gamegeneres
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Gamegenere < ActiveRecord::Base
  attr_accessible :name, :description
  
  has_many :contents
end
