class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :kite_saftey
      t.string :kite_level
      t.references :user
      t.timestamps
    end
  end
end
