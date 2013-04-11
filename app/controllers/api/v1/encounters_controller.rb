module Api::V1
  class EncountersController < ApiController
    def index
      encounters = Encounter.all
      encounters = appointment.encounters if appointment

      render json: encounters
    end

    def show
      encounter = Encounter.find_by_uid(params[:id])

      render json: encounter
    end

    private

    def appointment
      @appointment ||= Appointment.find_by_uid(params[:appointment_id])
    end
  end
end
