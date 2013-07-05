# == Schema Information
#
# Table name: flirts
#
#  id           :integer          not null, primary key
#  from_user_id :integer
#  to_user_id   :integer
#  project_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Flirt < ActiveRecord::Base
  attr_accessible :from_user_id, :project_id, :to_user_id

  belongs_to :project
  belongs_to :sender, :class_name => "User", :foreign_key => :from_user_id
  belongs_to :receiver, :class_name => "User", :foreign_key => :to_user_id
  
  paginates_per 10
end
