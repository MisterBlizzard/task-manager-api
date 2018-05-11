require 'api_version_constraint'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # os namespaces declarados devem ter uma pasta própria dentro da pasta controllers, é uma forma de organização
  # no path pode ser passado apenas o "/", chamando algo como www.site.com/api/tasks
  # se passar algo como path: "backend", seria www.site.com/backend/tasks
  # o domínio pode ser acessado com o subdominio declarado na constraint (api.site.com/tasks)
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
    # a constraint ApiVersionConstraint passa o valor identificado na variável do construtor (version: 1)
    # para a classe criada na lib/api_version_constraint.rb para ser tratada
    # default apenas indica que esse namespace é default
    namespace :v1, path: "/", constraint: ApiVersionConstraint.new(version: 1, default: true) do
      # resources :tasks
    end
    
    namespace :v2, path: "/", constraint: ApiVersionConstraint.new(version: 2) do
      # resources :tasks
    end
  end
end
