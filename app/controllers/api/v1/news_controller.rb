module Api

    module V1
    
        class NewsController < ApiApplicationController
            before_action :authenticate_request!
            respond_to :json

            def index
                new = New.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Carga de Noticias', data: new}, status: :ok
            end

           
                        

        end
        
    end
    
end