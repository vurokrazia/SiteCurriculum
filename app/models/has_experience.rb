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

class HasExperience < ApplicationRecord
  belongs_to :experience
  belongs_to :curriculum
end
