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

require 'spec_helper'

describe Review do
  pending "add some examples to (or delete) #{__FILE__}"
end
