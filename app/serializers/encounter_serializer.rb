class EncounterSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :start_time, :end_time, :user_ids, :patient_ids,
    :appointment_id

  def id
    object.uid
  end

  def appointment_id
    object.appointment.uid
  end
end
