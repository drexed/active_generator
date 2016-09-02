module ActiveGenerator
  module Base

    private

    def file_name_table
      file_name.underscore
    end

    def file_name_human
      file_name_table.tr('_', ' ').downcase.capitalize
    end

    def namespace
      name.downcase.split('/')[0...-1]
    end

    def namespaced?
      name.include?('/')
    end

    def namespace_human
      namespace.join(' ').tr('_', ' ').downcase.capitalize
    end

    def namespace_table
      namespace.join('_')
    end

    def namespace_path
      namespace.join('/')
    end

  end
end
