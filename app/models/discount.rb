# == Schema Information
#
# Table name: discounts
#
#  id               :integer          not null, primary key
#  discount_club_id :integer
#  venue_id         :integer
#  conditions       :string(255)
#  price            :integer
#  discount         :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Discount < ActiveRecord::Base
  attr_accessible :conditions, :discount, :price
  belongs_to :discount_club
  belongs_to :venue

  validates [:discount_club_id, :venue_id], presence: true
end
