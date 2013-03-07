require "ipaddr"

class ApiPermission
  SERVER_IP_RANGES = ["10.41.56.0/24", "10.41.57.0/24", "10.41.58.0/24", "10.41.59.0/24", "10.41.60.0/24", "10.41.61.0/24", "10.41.62.0/24", "129.74.223.0/24", "129.74.250.0/24", "129.74.16.0/24", "129.74.18.0/24", "129.74.19.0/24"]

  attr_accessor :request

  def initialize(request)
    @request = request
  end


  def request_is_internal?
    return true if allways_return_true_for_environment?

    return SERVER_IP_RANGES.detect(lambda { false } ) { |ip_range| ip_address_is_in_range?(ip_range, request.ip) }
  end

  private

    def ip_address_is_in_range?(ip_range, test_ip)
      net = IPAddr.new(ip_range)
      (net===test_ip)
    end


    def allways_return_true_for_environment?
      (Rails.env == 'development' || Rails.env == 'test')
    end

end
