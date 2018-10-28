class DropTableHastool < ActiveRecord::Migration[5.1]
  def change
  	drop_table :hastools
  end
end
