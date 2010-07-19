# == Schema Information
# Schema version: 15
#
# Table name: disctypes
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Disctype < ActiveRecord::Base
  attr_accessible :name, :description
end
