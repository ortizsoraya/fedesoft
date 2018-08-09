module Api

    module V1
    
        class ContactsController < ApiApplicationController
            before_action :authenticate_request!
            respond_to :json

            def index
                contact= Contact.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Carga de Contactos', data: contact}, status: :ok
            end


           
                        

        end
        
    end
    
end