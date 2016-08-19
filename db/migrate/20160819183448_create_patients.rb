class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :start_time
      t.string :end_time
      t.string :first_name
      t.string :last_name
      t.string :comments

      t.timestamps
    end
  end
end
