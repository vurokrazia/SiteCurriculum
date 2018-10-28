class AddReferencesToHasTools < ActiveRecord::Migration[5.1]
  def change
    remove_reference :has_tools, :myskill
  	add_reference :has_tools, :tool, index: true
  end
end
