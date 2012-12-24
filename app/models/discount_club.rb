# == Schema Information
#
# Table name: discount_clubs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DiscountClub < ActiveRecord::Base
  attr_accessible :name

  has_many :parameters, dependent: :destroy
  has_many :venues
  has_many :discounts, through: :venues
  has_and_belongs_to_many :users
end
