class Encounter < ActiveRecord::Base
  attr_accessible :appointment_id, :end_time, :patient_ids, :room_id, :start_time, :user_ids

  belongs_to :appointment

  before_create :set_uid

  private

  def set_uid
    self.uid = SecureRandom.hex(32)
  end
end
