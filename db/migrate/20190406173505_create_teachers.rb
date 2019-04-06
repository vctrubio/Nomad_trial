class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number_mxn
      t.date :contract_start
      t.date :contract_end
      t.string :languages
      t.string :total_hours_integer

      t.timestamps
    end
  end
end
