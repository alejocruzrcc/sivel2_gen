# encoding: UTF-8
module Sivel2Gen
  class Estadocivil < ActiveRecord::Base
    include Basica

    validates :nombre, presence: true, allow_blank: false
    validates :fechacreacion, presence: true, allow_blank: false
  end
end