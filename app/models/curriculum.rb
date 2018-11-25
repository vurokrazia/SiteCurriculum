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
#  c_image_file_name      :string
#  c_image_content_type   :string
#  c_image_file_size      :bigint(8)
#  c_image_updated_at     :datetime
#

class Curriculum < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  has_many :has_tools
  has_many :tools, through: :has_tools
  validates :title, presence:true
  validates :description_experience, presence:true
  validates :link, presence:true
  validates :start_date, presence:true
  validates :finish_date, presence:true
  has_attached_file :c_image, 
    styles: { 
      medium: { geometry: "600x400>" , format: :png, convert_options: "-background purple -gravity center -extent 600x400" },
      thumb:  {geometry: "100x100>" , format: :png, convert_options: "-background blue -gravity center -extent 100x100" },
      big:    {geometry: "720x440>" , format: :png, convert_options: "-background '#81d4fa' -gravity center -extent 720x440" }
    }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :c_image, content_type: /\Aimage\/.*\z/
end
