# == Schema Information
#
# Table name: curriculums
#
#  id                     :integer          not null, primary key
#  experience             :string
#  description_experience :string
#  link                   :string
#  start_date             :string
#  finish_date            :string
#  position               :string
#  type_exp               :string
#  user_id                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
