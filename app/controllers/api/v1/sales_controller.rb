module Api

    module V1
    
        class SalesController < ApiApplicationController
            before_action :authenticate_request!
            respond_to :json

            def index
                sale = Sale.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Carga de Ventas', data: sale}, status: :ok
            end
           
                        

        end
        
    end
    
end