require 'api_version_constraint'

Rails.application.routes.draw do
  devise_for :users

  # os namespaces declarados devem ter uma pasta própria dentro da pasta controllers, é uma forma de organização
  # no path pode ser passado apenas o "/", chamando algo como www.site.com/api/tasks
  # se passar algo como path: "backend", seria www.site.com/backend/tasks
  # o domínio pode ser acessado com o subdominio declarado na constraint (api.site.com/tasks)
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
    # a constraint ApiVersionConstraint passa o valor identificado na variável do construtor (version: 1)
    # para a classe criada na lib/api_version_constraint.rb para ser tratada
    # default apenas indica que esse namespace é default
    namespace :v1, path: "/", constraints: ApiVersionConstraint.new(version: 1, default: true) do
      resources :users, only: [:show]
    end
  end
end
