class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string   :uid
      t.integer  :appointment_id
      t.string   :room_id
      t.string   :patient_ids, array: true, default: []
      t.string   :user_ids, array: true, defaut: []
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
