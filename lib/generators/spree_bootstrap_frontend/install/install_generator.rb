module SpreeBootstrapFrontend
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def install
        generate "spree_frontend_bootstrap:install"
      end
    end
  end
end
