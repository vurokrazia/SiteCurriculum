# == Schema Information
#
# Table name: tools
#
#  id                   :integer          not null, primary key
#  title                :string
#  t_image_file_name    :string
#  t_image_content_type :string
#  t_image_file_size    :bigint(8)
#  t_image_updated_at   :datetime
#  description          :text
#  user_id              :integer
#  skill_id             :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Tool < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  has_many :has_tools
  has_many :curriculums, through: :has_tools


  has_attached_file :t_image, styles: { medium: "300x300>", thumb: "100x100>" , big: "720x440>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :t_image, content_type: /\Aimage\/.*\z/
end
