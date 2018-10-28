class RemoveColumntypeExpToCurriculum < ActiveRecord::Migration[5.1]
  def change
  	remove_column :curriculums, :type_exp
  	add_reference :curriculums, :tool, index: true
  end
end
