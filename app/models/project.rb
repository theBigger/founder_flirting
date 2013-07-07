# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :description, :name, :user_id

  belongs_to :user
  has_many :flirts, :dependent => :delete_all


  paginates_per 10
end
