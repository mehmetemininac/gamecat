# == Schema Information
# Schema version: 15
#
# Table name: disc_contents
#
#  id         :integer         not null, primary key
#  disc_id    :integer
#  content_id :integer
#

class DiscContent < ActiveRecord::Base
  belongs_to :disc
  belongs_to :content
end
