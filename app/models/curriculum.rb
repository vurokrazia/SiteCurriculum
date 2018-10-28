# == Schema Information
#
# Table name: curriculums
#
#  id                     :integer          not null, primary key
#  title                  :string
#  description_experience :string
#  link                   :string
#  start_date             :string
#  finish_date            :string
#  position               :string
#  user_id                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  experience_id          :integer
#

class Curriculum < ApplicationRecord
  belongs_to :user
  validates :title, presence:true
  validates :description_experience, presence:true
  validates :link, presence:true
  validates :start_date, presence:true
  validates :finish_date, presence:true
  belongs_to :experience

  has_many :has_tools, :dependent => :destroy
  has_many :tools, through: :has_tools, :dependent => :destroy
  #has_many :myskill, through: :has_tools, :dependent => :destroy

  scope :project, ->{where(experience_id:1)}
  scope :work, ->{where(experience_id:2)}
end
