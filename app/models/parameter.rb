# == Schema Information
#
# Table name: parameters
#
#  id               :integer          not null, primary key
#  content          :text
#  discount_club_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Parameter < ActiveRecord::Base
  attr_accessible :content, :discount_club_id, as: :admin
  belongs_to :discount_club

  validates :content, presence: true
  validates :discount_club_id, presence: true
end
