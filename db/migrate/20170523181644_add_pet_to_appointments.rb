class AddPetToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :pet_id, :integer
  end
end
