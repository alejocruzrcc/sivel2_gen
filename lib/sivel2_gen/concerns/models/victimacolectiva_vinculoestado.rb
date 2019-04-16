# encoding: UTF-8

module Sivel2Gen
  module Concerns
    module Models
      module VictimacolectivaVinculoestado 

        extend ActiveSupport::Concern

        included do

          belongs_to :vinculoestado, foreign_key: "id_vinculoestado", 
            validate: true, 
            class_name: 'Sivel2Gen::Vinculoestado'
          belongs_to :victimacolectiva, foreign_key: "victimacolectiva_id", 
            validate: true, class_name: 'Sivel2Gen::Victimacolectiva'

        end
      end
    end
  end
end
