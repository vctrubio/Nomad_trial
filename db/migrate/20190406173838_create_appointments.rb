class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :teacher, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :start
      t.string :equipment_used
      t.boolean :teacher_confirmation, :default => false
      t.boolean :payment, :default => false


      t.timestamps
    end
  end
end
