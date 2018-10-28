class CreateHasTools < ActiveRecord::Migration[5.1]
  def change
    create_table :has_tools do |t|
      t.references :curriculum, foreign_key: true
      t.references :tool, foreign_key: true

      t.timestamps
    end
  end
end
