module SolidusBootstrapFrontend
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def install
        generate "solidus_frontend_bootstrap:install"
      end
    end
  end
end
