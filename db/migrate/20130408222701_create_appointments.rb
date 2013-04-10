class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :uid
      t.string :reason
      t.string :user_ids, array: true, default: []
      t.string :patient_ids, array: true, default: []
      t.datetime :at

      t.timestamps
    end
  end
end
