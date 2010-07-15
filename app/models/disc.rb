class Disc < ActiveRecord::Base
  attr_accessible :number, :label, :disktype_id, :given, :given_to, :gived_on, :container_id, :comment
end
