# frozen_string_literal: true
ActiveGenerator.configure do |config|
  config.autoload_controller_generator_locale = true
  config.autoload_helper_generator_locale = true
  config.autoload_job_generator_locale = true
  config.autoload_mailer_generator_locale = true
  config.autoload_model_generator_locale = true
  config.autoload_service_generator_locale = true
  config.autoload_task_generator_locale = true
  config.autoload_view_generator_locale = true
  config.test_framework = 'test_unit'
end
