# == Schema Information
#
# Table name: venues
#
#  id          :integer          not null, primary key
#  category_id :integer
#  name        :string(255)
#  city        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Venue < ActiveRecord::Base
  attr_accessible :city, :name

  has_many :reviews
  has_many :discounts
  belongs_to :category

end
