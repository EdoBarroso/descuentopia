# == Schema Information
#
# Table name: discounts
#
#  id               :integer          not null, primary key
#  category_id      :integer
#  name             :string(255)
#  city             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  discount_club_id :integer
#

require 'spec_helper'

describe Venue do
  pending "add some examples to (or delete) #{__FILE__}"
end
