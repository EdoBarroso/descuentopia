# == Schema Information
#
# Table name: venues
#
#  id          :integer          not null, primary key
#  category_id :integer
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Venue < ActiveRecord::Base
  attr_accessible :name, :category_id, as: :admin

  has_many :reviews
  belongs_to :category
  has_and_belongs_to_many :discount_clubs

  validates :category_id, presence: true
  validates :name, presence: true

end
