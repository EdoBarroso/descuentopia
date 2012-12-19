# == Schema Information
#
# Table name: states
#
#  id          :integer          not null, primary key
#  category_id :integer
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class State < ActiveRecord::Base
  attr_accessible :name
end
