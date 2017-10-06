# frozen_string_literal: true

module ActiveGenerator
  class Settings
    extend Dry::Configurable

    setting :autoload_controller_generator_locale, true
    setting :autoload_helper_generator_locale, true
    setting :autoload_job_generator_locale, true
    setting :autoload_mailer_generator_locale, true
    setting :autoload_model_generator_locale, true
    setting :autoload_service_generator_locale, true
    setting :autoload_task_generator_locale, true
    setting :autoload_view_generator_locale, true
    setting :test_framework, 'test_unit'

  end
end
