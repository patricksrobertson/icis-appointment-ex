class Appointment < ActiveRecord::Base
  attr_accessible :at, :reason, :patient_ids, :user_ids, :uid

  before_create :set_uid

    private

  def set_uid
    self.uid = SecureRandom.hex(32)
  end
end
