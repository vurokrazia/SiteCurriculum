# == Schema Information
#
# Table name: curriculums
#
#  id                     :integer          not null, primary key
#  description_experience :string
#  link                   :string
#  start_date             :string
#  finish_date            :string
#  position               :string
#  user_id                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  experience_id          :integer
#  title                  :string
#

require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
