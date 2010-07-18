# == Schema Information
# Schema version: 8
#
# Table name: discs
#
#  id           :integer         not null, primary key
#  number       :integer
#  label        :string(255)
#  disktype_id  :integer
#  given        :boolean
#  given_to     :string(255)
#  gived_on     :datetime
#  container_id :integer
#  comment      :text
#  created_at   :datetime
#  updated_at   :datetime
#

class Disc < ActiveRecord::Base
  attr_accessible :number, :label, :disktype_id, :given, :given_to, :gived_on, :container_id, :comment
  
  has_many :contents
  belongs_to :disktype
  belongs_to :container
end
