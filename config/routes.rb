Sivel2Gen::Engine.routes.draw do

  get '/anexoactividades/descarga_anexoactividad/:id' => 'anexoactividades#descarga_anexoactividad'
  get '/anexos/descarga_anexo/:id' => 'anexos#descarga_anexo'
  get '/ubicaciones/nuevo' => 'ubicaciones#nuevo'
  get '/victimas/nuevo' => 'victimas#nuevo'
  get '/presponsables/nuevo' => 'presponsables#nuevo'
  get '/casos/lista' => 'casos#lista'
  get '/casos/nuevaubicacion' => 'casos#nueva_ubicacion'
  get '/casos/nuevavictima' => 'casos#nueva_victima'
  get '/casos/nuevopresponsable' => 'casos#nuevo_presponsable'
  get "/casos/busca" => 'casos#busca'
  get "tablasbasicas" => 'hogar#tablasbasicas'
  get 'acercade' => 'hogar#acercade'
  get "hogar" => 'hogar#index'

  resources :actividades, path_names: { new: 'nueva', edit: 'edita' }
  resources :casos, path_names: { new: 'nuevo', edit: 'edita' }

  devise_scope :usuario do
    get 'sign_out' => 'devise/sessions#destroy'
  end
  devise_for :usuarios, :skip => [:registrations], module: :devise
    as :usuario do
          get 'usuarios/edit' => 'devise/registrations#edit', 
            :as => 'editar_registro_usuario'    
          put 'usuarios/:id' => 'devise/registrations#update', 
            :as => 'registro_usuario'            
  end
  resources :usuarios, path_names: { new: 'nuevo', edit: 'edita' } 

  namespace :admin do
    Ability.tablasbasicas.each do |t|
      c = t[1].pluralize
      resources c.to_sym, 
        path_names: { new: 'nueva', edit: 'edita' }
    end
  end

  root 'hogar#index'
end
