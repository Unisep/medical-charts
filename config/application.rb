require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module MedicalCharts
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = 'pt-BR'

    config.exceptions_app = self.routes

    Dir.glob(Rails.root.join('config', 'locales', '**', '*/')).each do |dir|
      paths['config/locales'] << dir
    end

    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.assets false
      g.helper false
    end
  end
end
