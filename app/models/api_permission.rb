require "ipaddr"

class ApiPermission
  SERVER_IP_RANGES = ["10.41.56.0/24", "10.41.57.0/24", "10.41.58.0/24", "10.41.59.0/24", "10.41.60.0/24", "10.41.61.0/24", "10.41.62.0/24"]

  attr_accessor :request

  def initialize(request)
    @request = request
  end


  def request_is_internal?
    return true if allways_return_true_for_environment?

    SERVER_IP_RANGES.each do | ip_range | 
      return true if ip_address_is_in_range?(ip_range, request.ip)
    end

    return false
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