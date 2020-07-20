module Sivel2Gen
  module Concerns
    module Models
      module SectorsocialsecVictima 

        extend ActiveSupport::Concern
        included do
          belongs_to :sectorsocial, foreign_key: "sectorsocial_id",
            validate: true, class_name: 'Sivel2Gen::Sectorsocial'
          belongs_to :victima, foreign_key: "victima_id",
            validate: true, class_name: "Sivel2Gen::Victima"
        end
      end
    end
  end
end
