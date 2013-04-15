# == Schema Information
#
# Table name: cities
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  region  :string(255)
#  country :string(255)
#

class City < ActiveRecord::Base
  attr_accessible :name, :region, :country, as: :admin

  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :country, presence: true
end
