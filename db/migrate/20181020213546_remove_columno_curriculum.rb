class RemoveColumnoCurriculum < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :curriculums, :tool, index: true
  	add_reference :curriculums, :myskill, index: true
  end
end
