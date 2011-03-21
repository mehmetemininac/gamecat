class Role < ActiveRecord::Base
  attr_accessible :name, :users, :user_ids

  has_many :users
end
