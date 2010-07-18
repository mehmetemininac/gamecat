# == Schema Information
# Schema version: 8
#
# Table name: contentcategories
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Contentcategory < ActiveRecord::Base
  attr_accessible :name, :description
  
  has_many :contents
end
