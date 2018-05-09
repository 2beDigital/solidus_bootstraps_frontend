module SolidusFrontendBootstrap
  module Generators
    class InstallGenerator < Rails::Generators::Base
      hide!()
      
      source_root File.expand_path("../templates", __FILE__)

      def add_stylesheets
        copy_file 'stylesheets/bootstrap_frontend.css.scss',
                  'app/assets/stylesheets/spree/frontend/bootstrap_frontend.css.scss'

        string = "*= require spree/frontend/bootstrap_frontend"
        
        f = 'vendor/assets/stylesheets/spree/frontend/all.css'
        gsub_regex = /^\*=(\ *)require spree\/frontend(?!\/)(.*)/
        inject_regex = /^\*=(\ *)require_self/
        
        if File.readlines(f).grep(gsub_regex).any?
          gsub_file f, gsub_regex do |match|
            "#{match.sub('*=','*')}\n#{string}"
          end
        elsif File.readlines(f).grep(inject_regex).any?
          inject_into_file f, "#{string}\n", before: inject_regex, verbose: true
        else
          copy_file 'stylesheets/all.css', 'vendor/assets/stylesheets/spree/frontend/all.css'
        end
      end
    end
  end
end
