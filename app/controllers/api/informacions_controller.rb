class Api::InformacionsController < ApplicationController

        before_action :set_informacion, only: [:show, :update, :destroy]
      
        def index
          @informacions = Informacion.all
          render json: @informacions
        end
      
        def show
        end
      
        def create
          @informacion = Informacion.new(informacion_params)
      
          if @informacion.save
            render json: @informacion, status: :created
          else
            render json: @informacion.errors, status: :unprocessable_entity
          end
        end
      
        def update
          if @informacion.update(informacion_params)
            render json: @informacion, status: :ok
          else
            render json: @informacion.errors, status: :unprocessable_entity
          end
        end
      
        def destroy
          @informacion.destroy
          head :no_content
        end
      
        private
          def set_informacion
            @informacion = Informacion.find(params[:id])
          end
      
          def informacion_params
            params.require(:informacion).permit(:nombre_tecnico, :descripcion, :nombre_altenativo, :via_consumo)
          end






end
