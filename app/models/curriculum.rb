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

class Curriculum < ApplicationRecord
  belongs_to :user
  validates :experience, presence:true
  validates :description_experience, presence:true
  validates :link, presence:true
  validates :start_date, presence:true
  validates :finish_date, presence:true
  validates :type_exp, presence:true
end
