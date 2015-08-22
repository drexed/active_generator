module ActiveGenerator
  module Base

    private

    def file_name_table
      file_name.underscore
    end

    def file_name_human
      file_name_table.split("_").map { |w| w.capitalize }.join(" ")
    end

    def namespace
      name.downcase.split("/").delete_last
    end

    def namespaced?
      name.include?("/")
    end

    def namespace_human
      namespace.map { |w| w.capitalize }.join(" ")
    end

    def namespace_table
      namespace.join("_")
    end

    def namespace_path
      namespace.join("/")
    end

  end
end