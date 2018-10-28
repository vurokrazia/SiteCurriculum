class Removereferencesskills < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :tools, :myskill
  end
end
