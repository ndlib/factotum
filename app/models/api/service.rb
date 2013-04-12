module API
  class Service
    SERVICES = {
      employee: Employee,
      unit: Unit,
      discovery: Discovery
    }
    def self.get(service)
      SERVICES[service]
    end
  end
end
