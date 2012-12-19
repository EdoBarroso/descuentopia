class DiscountClub < ActiveRecord::Base
  attr_accessible :name
  has_many :parameters, dependent: :destroy
  has_and_belongs_to_many :users
end
