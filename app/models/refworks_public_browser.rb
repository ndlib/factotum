class RefworksPublicBrowser
  USERAGENT = "NDLibraryRefWorks/1.0"
  LOGIN_URL = 'https://www.refworks.com/refworks2/?r=authentication::init&groupcode=RWUnivNotreDame'
  attr_accessor :cookie
  
  def post_with_response(url, data, headers = {})
    headers.reverse_merge!(self.default_headers)
    url = URI.parse(url)
    http = Net::HTTP.new(url.host, url.port)
    if url.scheme == 'https'
      http.use_ssl = true
    end
    resp, body = http.post(url.request_uri, data.to_query, headers)
    raise "POST FAILED:"+resp.inspect unless resp.is_a? Net::HTTPOK or resp.is_a? Net::HTTPFound
    return resp, body
  end
  
  def post(url, data, headers = {})
    resp, body = self.post_with_response(url, data, headers)
    return body
  end
  
  def default_headers
    {
      'Cookie' => self.cookie || '',
      'User-Agent' => USERAGENT
    }
  end
end