class RenombraAisla < ActiveRecord::Migration[4.2]
  def change
    rename_table :actividad, :sivel2_gen_actividad
    rename_table :actividad_rangoedadac, :sivel2_gen_actividad_rangoedadac
    rename_table :actividadarea, :sivel2_gen_actividadarea
    rename_table :actividadareas_actividad, :sivel2_gen_actividadareas_actividad
    #rename_table :actividadoficio, :sivel2_gen_actividadoficio
    rename_table :acto, :sivel2_gen_acto
    rename_table :actocolectivo, :sivel2_gen_actocolectivo
    rename_table :anexo, :sivel2_gen_anexo
    rename_table :anexoactividad, :sivel2_gen_anexoactividad
    rename_table :antecedente, :sivel2_gen_antecedente
    rename_table :antecedente_caso, :sivel2_gen_antecedente_caso
    rename_table :antecedente_comunidad, :sivel2_gen_antecedente_comunidad
    rename_table :antecedente_victima, :sivel2_gen_antecedente_victima
    rename_table :caso, :sivel2_gen_caso
    rename_table :caso_categoria_presponsable, :sivel2_gen_caso_categoria_presponsable
    rename_table :caso_contexto, :sivel2_gen_caso_contexto
    rename_table :caso_etiqueta, :sivel2_gen_caso_etiqueta
    rename_table :caso_ffrecuente, :sivel2_gen_caso_ffrecuente
    rename_table :caso_fotra, :sivel2_gen_caso_fotra
    rename_table :caso_frontera, :sivel2_gen_caso_frontera
    rename_table :caso_presponsable, :sivel2_gen_caso_presponsable
    rename_table :caso_region, :sivel2_gen_caso_region
    rename_table :caso_usuario, :sivel2_gen_caso_usuario
    rename_table :categoria, :sivel2_gen_categoria
    rename_table :clase, :sivel2_gen_clase
    rename_table :comunidad_filiacion, :sivel2_gen_comunidad_filiacion
    rename_table :comunidad_organizacion, :sivel2_gen_comunidad_organizacion
    rename_table :comunidad_profesion, :sivel2_gen_comunidad_profesion
    rename_table :comunidad_rangoedad, :sivel2_gen_comunidad_rangoedad
    rename_table :comunidad_sectorsocial, :sivel2_gen_comunidad_sectorsocial
    rename_table :comunidad_vinculoestado, :sivel2_gen_comunidad_vinculoestado
    rename_table :contexto, :sivel2_gen_contexto
    rename_table :departamento, :sivel2_gen_departamento
    #rename_table :escolaridad, :sivel2_gen_escolaridad
    #rename_table :estadocivil, :sivel2_gen_estadocivil
    rename_table :etiqueta, :sivel2_gen_etiqueta
    rename_table :etnia, :sivel2_gen_etnia
    execute <<-SQL
    ALTER INDEX IF EXISTS prensa_pkey RENAME TO ffrecuente_pkey;
    SQL
    rename_table :ffrecuente, :sivel2_gen_ffrecuente
    rename_table :filiacion, :sivel2_gen_filiacion
    execute <<-SQL
    ALTER INDEX IF EXISTS fuente_directa_pkey RENAME TO fotra_pkey;
    SQL
    rename_table :fotra, :sivel2_gen_fotra
    rename_table :frontera, :sivel2_gen_frontera
    rename_table :grupoper, :sivel2_gen_grupoper
    rename_table :iglesia, :sivel2_gen_iglesia
    rename_table :intervalo, :sivel2_gen_intervalo
    rename_table :municipio, :sivel2_gen_municipio
    #rename_table :maternidad, :sivel2_gen_maternidad
    rename_table :organizacion, :sivel2_gen_organizacion
    rename_table :pais, :sivel2_gen_pais
    execute <<-SQL
    ALTER INDEX IF EXISTS parametros_reporte_consolidado_pkey RENAME TO pconsolidado_pkey;
    SQL
    rename_table :pconsolidado, :sivel2_gen_pconsolidado
    rename_table :persona, :sivel2_gen_persona
    rename_table :persona_trelacion, :sivel2_gen_persona_trelacion
    execute <<-SQL
    ALTER INDEX IF EXISTS presuntos_responsables_pkey RENAME TO presponsable_pkey;
    SQL
    rename_table :presponsable, :sivel2_gen_presponsable
    rename_table :profesion, :sivel2_gen_profesion
    execute <<-SQL
    ALTER INDEX IF EXISTS rango_edad_pkey RENAME TO rangoedad_pkey;
    SQL
    rename_table :rangoedad, :sivel2_gen_rangoedad
    rename_table :rangoedadac, :sivel2_gen_rangoedadac
    rename_table :region, :sivel2_gen_region
    rename_table :regionsjr, :sivel2_gen_regionsjr
    execute <<-SQL
    ALTER INDEX IF EXISTS sector_social_pkey RENAME TO sectorsocial_pkey;
    SQL
    rename_table :sectorsocial, :sivel2_gen_sectorsocial
    rename_table :supracategoria, :sivel2_gen_supracategoria
    rename_table :tclase, :sivel2_gen_tclase
    rename_table :tdocumento, :sivel2_gen_tdocumento
    rename_table :trelacion, :sivel2_gen_trelacion
    execute <<-SQL
    ALTER INDEX IF EXISTS tipo_sitio_pkey RENAME TO tsitio_pkey;
    SQL
    rename_table :tsitio, :sivel2_gen_tsitio
    rename_table :tviolencia, :sivel2_gen_tviolencia
    execute <<-SQL
    ALTER TABLE ubicacion RENAME TO sivel2_gen_ubicacion;
    ALTER INDEX IF EXISTS ubicacion_pkey RENAME TO sivel2_gen_ubicacion_pkey;
    ALTER INDEX IF EXISTS ubicacion2_pkey RENAME TO sivel2_gen_ubicacion_pkey;
    SQL
    rename_table :victima, :sivel2_gen_victima
    rename_table :victimacolectiva, :sivel2_gen_victimacolectiva
    execute <<-SQL
    ALTER INDEX IF EXISTS vinculo_estado_pkey RENAME TO vinculoestado_pkey;
    SQL
    rename_table :vinculoestado, :sivel2_gen_vinculoestado
  end
end
