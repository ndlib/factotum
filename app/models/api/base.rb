module API
  class Base
    BASE_PATH = "/"

    def self.base_path
      const_get(:BASE_PATH)
    end

    def self.get_json(path)
      JSON.parse(get(path, :json))
    end

    def self.get(path, format = nil)
      require 'open-uri'
      open(api_url(path, format)).read
    end

    def self.api_url(path, format = nil)
      if format.present?
        extension = ".#{format}"
      end
      "#{Rails.configuration.api_url}#{base_path}#{path}#{extension}?auth_token=#{Rails.configuration.api_token}"
    end
  end
end
