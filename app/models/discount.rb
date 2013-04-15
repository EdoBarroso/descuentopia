# == Schema Information
#
# Table name: discounts
#
#  id               :integer          not null, primary key
#  venue_id         :integer
#  discount_club_id :integer
#  conditions       :string(255)
#  price            :integer
#  discount         :string(255)
#  usage            :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Discount < ActiveRecord::Base
  attr_accessible :conditions, :discount, :price, :venue_id, :usage, as: :admin
  belongs_to :venue

  validates :venue_id, presence: true
  validates :conditions, presence: true

  delegate :name, to: :venue, prefix: true
end
