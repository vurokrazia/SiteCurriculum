class CreateHasSkills < ActiveRecord::Migration[5.1]
  def change
    remove_reference :has_tools, :tool
  	add_reference :tools, :myskill, index: true
  end
end
