require 'rails/generators/rails/task/task_generator'

class Rails::Generators::TaskGenerator

  def generate_locale_file
    return unless ActiveGenerator::Settings.config.autoload_task_generator_locale
    invoke('locale:task', [name])
  end

end
