require 'dropzonejs-rails'
require 'simple_form'
require 'jquery-rails'

module RailsAdminDropzoneRails6
  class Engine < ::Rails::Engine
    initializer 'rails_admin_dropzone_rails_6_assets' do |app|
      app.config.assets.precompile += %w(
        rails_admin/rails_admin_dropzone_rails_6.js
        rails_admin/rails_admin_dropzone_rails_6.css
      )
    end
  end
end
