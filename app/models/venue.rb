# == Schema Information
#
# Table name: venues
#
#  id               :integer          not null, primary key
#  category_id      :integer
#  name             :string(255)
#  city             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  discount_club_id :integer
#

class Venue < ActiveRecord::Base
  attr_accessible :city, :name

  has_many :reviews
  has_many :discounts, dependent: :destroy
  belongs_to :category
  belongs_to :discount_club

  validates :category_id, presence: true
  validates :name, presence: true
  validates :discount_club_id, presence: true

end
