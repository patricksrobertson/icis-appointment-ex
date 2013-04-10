module Api::V1
  class AppointmentsController < ApiController
    def index
      appointments = Appointment.all

      render json: appointments
    end

    def show
      appointment = Appointment.find_by_uid(params[:id])

      render json: appointment
    end
  end
end
