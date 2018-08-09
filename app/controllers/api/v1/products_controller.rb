module Api

    module V1
    
        class ProductsController < ApiApplicationController
            before_action :authenticate_request!
            respond_to :json

            def index
                product = Product.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Carga de Productos o Bienes', data: product}, status: :ok
            end

            def create

                product = Product.new(product_params)

                if product.save

                    render json: {status: 'SUCCESS', message: 'Producto registrado', data: product,
                    auth_token: JsonWebToken.encode({product_id: product.id})}, status: :ok

                end

            end

            private

            def product_params

                params.permit(:name, :description, :picture, :date_limit, :price, :user);

            end 
                  

           
                        

        end
        
    end
    
end