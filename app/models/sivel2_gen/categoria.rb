# encoding: UTF-8
module Sivel2Gen
  class Categoria < ActiveRecord::Base
    include Sip::Basica

    belongs_to :supracategoria, foreign_key: "supracategoria_id", 
      validate: true, class_name: 'Sivel2Gen::Supracategoria'

    belongs_to :contada, foreign_key: "contadaen", 
      class_name: 'Sivel2Gen::Categoria'

    has_many :acto, foreign_key: "id_categoria", validate: true,
      class_name: 'Sivel2Gen::Acto'
    has_many :actosjr, foreign_key: "id_categoria", validate: true,
      class_name: 'Sivel2Gen::Actosjr'
    has_many :casosjr, foreign_key: "categoriaref", validate: true,
      class_name: 'Sivel2Gen::Casosjr'

    def presenta_nombre
      sup = Sivel2Gen::Supracategoria.find(self.supracategoria_id)
      self.nombre + " (" + sup.nombre + " / " + 
        Sivel2Gen::Tviolencia.find(sup.id_tviolencia).nombre + ")"
    end

    def presenta(atr)
      clf = clase_llave_foranea(atr)
      if (atr.to_s == "tipocat")
        h={C: "Colectivo", I: "Individual", O: "Otro"}
        return h[self[atr.to_s].to_sym]
      else
        presenta_gen(atr)
      end
    end
  end
end
