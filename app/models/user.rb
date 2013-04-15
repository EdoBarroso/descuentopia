# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string(255)
#  last_name              :string(255)
#  city                   :string(255)
#  phone                  :integer
#

class User < ActiveRecord::Base
  rolify

  after_create :default_role

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  if Rails.env.production?
    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  else
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  end


  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :city, :phone, :discount_club_ids, :as => [:default, :admin]

  has_and_belongs_to_many :discount_clubs
  has_many :venues, through: :discount_clubs
  has_many :reviews
  validates_numericality_of :phone, only_integer: true, allow_blank: true

  delegate :venue, :to => :discounts , prefix: true

  private
  def default_role
    self.roles << Role.first
  end
  #For development purposes only. It should be deprecated before launching the final version
  def default_discount_club
    self.discount_clubs << DiscountClub.first
  end
  
end
