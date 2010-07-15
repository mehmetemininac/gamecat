class Content < ActiveRecord::Base
  attr_accessible :name, :contenttype_id, :gamegenere_id, :contentcategory_id, :disc_id, :cracked, :original, :moviegenere_id, :moviequality, :movieyear, :subtitules, :comment
end
