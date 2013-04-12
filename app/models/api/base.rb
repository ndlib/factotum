module API
  class Base
    BASE_PATH = "/"

    def self.base_path
      const_get(:BASE_PATH)
    end

    def self.requires_auth_token?
      true
    end

    def self.get_json(path, query_terms = {})
      JSON.parse(get(path, :json, query_terms))
    end

    def self.get(path, format = nil, query_terms = {})
      require 'open-uri'
      open(api_url(path, format, query_terms)).read
    end

    def self.api_url(path, format = nil, query_terms = {})
      if format.present?
        extension = ".#{format}"
      end
      if self.requires_auth_token?
        query_terms = query_terms.reverse_merge(auth_token: Rails.configuration.api_token)
      end
      "#{Rails.configuration.api_url}#{base_path}#{path}#{extension}?#{query_terms.to_query}"
    end
  end
end
