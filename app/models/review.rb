# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  venue_id   :integer
#  user_id    :integer
#  stars      :integer
#  comment    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
  attr_accessible :comment, :stars

  belongs_to :user
  belongs_to :venue
end
