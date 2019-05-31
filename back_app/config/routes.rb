Rails.application.routes.draw do

  root to: 'pages#home'
  
  get '/about', to: 'pages#about'
  get '/collaborators', to: 'pages#collaborators'
  get '/developers', to: 'pages#developers'

  resources :user_profiles, path: 'usuarios'

  devise_for :accounts, controllers: {
    sessions: 'accounts/sessions',
    confirmations: 'accounts/confirmations',
    passwords: 'accounts/passwords',
    registrations: 'accounts/registrations',
  }
  devise_scope :accounts do
    get 'signup', to: 'accounts/registrations#new'
    get 'signin', to: 'accounts/sessions#new'
    delete 'signout', to: 'accounts/sessions#destroy'
  end

  resources :health_units, path: 'unidades' do
    resources :comments, path: 'comentarios'
    collection do
      get :basic_search, path: 'resultados'
      get :advanced_search, path: 'pesquisar'
      get :list_by_specialties, path: 'especialidades', as: :specialty
      get :list_by_treatments, path: 'atendimentos', as: :treatments
      get :search_by_neighborhood, path: 'bairro', as: :neighborhood
    end
  end

  resources :professional_profiles, path: 'profissionais' do
    resources :comments, path: 'comentarios'
  end

  resources :service_providers, path: 'servicos' do
    resources :comments, path: 'comentarios'
  end

  resource_names = %w'basic_health_unit diagnosis_unit emergency_unit
  family_health_unit hospital maternity_clinic mental_health_unit
  odontology_unit pharmacy polyclinic specialized_unit'

  path_names = %w'unidades-basicas apoio-diagnostico emergencias
  saude-da-familia hospitais maternidades saude-mental odontologia
  farmacias policlinicas unidades-especializadas'

  resource_names.zip(path_names).map do |resource_name, path_name|
    resources resource_name.pluralize.to_sym, path: path_name do
      resources :comments, path: 'comentarios'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
