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
#  profile                :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  attr_accessible :name, :profile

  validates :name, :uniqueness => true, :length => {:minimum => 1}
  validates :profile, :length => {:minimum => 10}

  has_many :projects, :order => "updated_at DESC"

  has_many :sent_flirts, :class_name => "Flirt", :order => "updated_at DESC", :foreign_key => "from_user_id"
  has_many :received_flirts, :class_name => "Flirt", :order => "updated_at DESC", :foreign_key => "to_user_id"

  paginates_per 10
end
