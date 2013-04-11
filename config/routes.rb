IcisAppointmentExample::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :appointments, only: [:index, :show]
      resources :encounters, only: [:index, :show]
    end
  end
end
