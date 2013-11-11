class Search::Redirect
  attr_reader :params

  def initialize(params = {})
    @params = clean_params(params)
  end

  def clean_params(hash)
    hash.reject {|key,value| !accept_params.include?(key.to_sym)}
  end

  def accept_params
    [:q]
  end

  def search?
    params[:q].present?
  end

  def query_params
    params
  end

  def query_string
    to_query = query_params.to_query
    if to_query.present?
      "?#{to_query}"
    else
      ""
    end
  end

  def path
    "/"
  end

  def url
    "#{base_url}#{path}#{query_string}"
  end

  def redirect_name
    :library
  end

  def base_url
    self.class.config[redirect_name]
  end

  def self.config_name
    Rails.env
  end

  def self.config
    config_file = File.join(Rails.root,"config","search.yml")

    yml = YAML::load_file(config_file).with_indifferent_access
    yml[config_name] || yml[:default]
  end
end
