module Api

    module V1
    
        class LocationsController < ApiApplicationController
            before_action :authenticate_request!
            respond_to :json

            def index
                local = Location.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Carga de localidad', data: local}, status: :ok
            end
                        

        end
        
    end
    
end