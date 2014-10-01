module SpreeAuthDeviseBootstrap
  class Engine < Rails::Engine
    isolate_namespace Spree
    engine_name 'spree_auth_devise_bootstrap'

    paths["app/views"] << "lib/views/frontend"
  end
end
