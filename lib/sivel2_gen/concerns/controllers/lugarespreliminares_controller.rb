# encoding: UTF-8
module Sivel2Gen
  module Concerns
    module Controllers
      module LugarespreliminaresController
        extend ActiveSupport::Concern

        included do
          # Los siguientes deben ir en clase que incluya esta modulo
          #before_action :set_lugarpreliminar,
          #    only: [:show, :edit, :update, :destroy]
          #load_and_authorize_resource class: Sivel2Gen::Lugarpreliminar,
          #  except: [:index, :show]
          helper Sip::UbicacionHelper
         
          def registrar_en_bitacora
            true
          end

          def clase
            'Sivel2Gen::Lugarpreliminar'
          end
          
          def lista_params 
            [ "id",
              "fecha",
              "codigositio",
              "nombreusuario",
              "organizacion",
              "ubicacionpre_id"
            ]
          end

          def atributos_index
            [ "id",
              "fecha",
              "codigositio",
              "nombreusuario",
              "organizacion"
            ]
          end

          def genclase
            'M'
          end

          def atributos_show
            atributos_index +
            [
              # Otras
              :created_at,
              :updated_at
            ]
          end

          def new_modelo_path(o)
            return new_lugarpreliminar_path()
          end

          def vistas_manejadas
             return ['Lugarpreliminar']
          end
          
          private

          def set_lugarpreliminar
            @registro = @basica = @lugarpreliminar = Sivel2Gen::Lugarpreliminar.find(
                    Lugarpreliminar.connection.quote_string(params[:id]).to_i
                        )
          end

          # No confiar parametros a Internet, sólo permitir lista blanca
          def lugarpreliminar_params
            params.require(:lugarpreliminar).permit(lista_params)
          end
        end
      end
    end
  end
end
