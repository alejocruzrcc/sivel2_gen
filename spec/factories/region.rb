# encoding: UTF-8

FactoryGirl.define do
  factory :region do
		id 1000 # Buscamos que no intefiera con existentes
    nombre "Region"
    fechacreacion "2014-09-09"
    created_at "2014-09-09"
  end
end
