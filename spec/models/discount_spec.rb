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

require 'spec_helper'

describe Discount do
  pending "add some examples to (or delete) #{__FILE__}"
end
