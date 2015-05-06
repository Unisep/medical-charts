require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module MedicalCharts
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :'pt-BR'

    config.active_record.raise_in_transactional_callbacks = true
  end
end
