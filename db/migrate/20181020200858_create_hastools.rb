class CreateHastools < ActiveRecord::Migration[5.1]
  def change
    create_table :hastools do |t|
      t.references :curriculum, foreign_key: true
      t.references :tool, foreign_key: true

      t.timestamps
    end
  end
end
