class ActiveGenerator::Configuration

  attr_accessor :autoload_controller_generator_locale,
                :autoload_helper_generator_locale,
                :autoload_job_generator_locale,
                :autoload_mailer_generator_locale,
                :autoload_model_generator_locale,
                :autoload_service_generator_locale,
                :autoload_task_generator_locale,
                :autoload_view_generator_locale,
                :test_framework

  def initialize
    @autoload_controller_generator_locale = true
    @autoload_helper_generator_locale = true
    @autoload_job_generator_locale = true
    @autoload_mailer_generator_locale = true
    @autoload_model_generator_locale = true
    @autoload_service_generator_locale = true
    @autoload_task_generator_locale = true
    @autoload_view_generator_locale = true
    @test_framework = "test_unit"
  end

end
