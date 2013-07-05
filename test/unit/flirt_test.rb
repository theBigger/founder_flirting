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

require 'test_helper'

class FlirtTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
