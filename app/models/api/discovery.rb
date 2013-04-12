module API
  class Discovery < Base
    BASE_PATH = "/1.0/resources/search/"

    def self.requires_auth_token?
      false
    end

    def self.catalog_url(search_term, format = :json)
      self.api_url("catalog", format, {q: search_term})
    end

    def self.electronic_url(search_term, format = :json)
      self.api_url("electronic", format, {q: search_term})
    end
  end
end
