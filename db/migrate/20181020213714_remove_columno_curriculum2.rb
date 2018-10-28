class RemoveColumnoCurriculum2 < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :curriculums, :myskill
  	add_reference :curriculums, :experience, index: true
  end
end
