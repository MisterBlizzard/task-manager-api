Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # os namespaces declarados devem ter uma pasta própria dentro da pasta controllers, é uma forma de organização
  # no path pode ser passado apenas o "/", chamando algo como www.site.com/api/tasks
  # se passar algo como path: "backend", seria www.site.com/backend/tasks
  # o domínio pode ser acessado com o subdominio declarado na constraint (api.site.com/tasks)
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
      
  end
end
