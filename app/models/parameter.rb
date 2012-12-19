class Parameter < ActiveRecord::Base
  attr_accessible :content
  belongs_to :discount_club
end
