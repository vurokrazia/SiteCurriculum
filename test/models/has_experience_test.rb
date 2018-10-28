# == Schema Information
#
# Table name: has_experiences
#
#  id            :integer          not null, primary key
#  experience_id :integer
#  curriculum_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class HasExperienceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
