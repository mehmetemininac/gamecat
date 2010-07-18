# == Schema Information
# Schema version: 8
#
# Table name: containers
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Container < ActiveRecord::Base
  attr_accessible :name, :description
end
