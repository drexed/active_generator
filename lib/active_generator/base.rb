module ActiveGenerator
  module Base

    private

    def file_name_table
      file_name.underscore
    end

    def file_name_human
      file_name_table.gsub('_'.freeze, ' '.freeze).downcase.capitalize
    end

    def namespace
      name.downcase.split('/'.freeze).delete_last
    end

    def namespaced?
      name.include?('/'.freeze)
    end

    def namespace_human
      namespace.join(' '.freeze).gsub('_'.freeze, ' '.freeze).downcase.capitalize
    end

    def namespace_table
      namespace.join('_'.freeze)
    end

    def namespace_path
      namespace.join('/'.freeze)
    end

  end
end