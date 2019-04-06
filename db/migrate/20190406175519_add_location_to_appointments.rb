class AddLocationToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :location, :string
  end
end
