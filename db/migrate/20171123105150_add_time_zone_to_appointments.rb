class AddTimeZoneToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :time_zone, :text
  end
end