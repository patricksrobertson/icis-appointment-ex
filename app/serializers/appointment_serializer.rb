class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :reason, :at, :user_ids, :patient_ids

  def id
    object.uid
  end
end
