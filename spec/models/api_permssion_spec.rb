require 'rails_helper'


describe ApiPermission do
  let(:request) { double(ActionController::TestRequest) }


  it "returns true if a request is in the range of the library internal servers " do
    allow_any_instance_of(ApiPermission).to receive(:allways_return_true_for_environment?).and_return(false)

    r = request

    true_ips = ["10.41.56.0", "10.41.57.255", "10.41.58.142", "10.41.59.32", "10.41.60.95", "10.41.61.177", "10.41.62.232"]

    true_ips.each do |test_ip|
      allow(r).to receive(:ip).and_return(test_ip)
      ap = ApiPermission.new(r)

      expect(ap.request_is_internal?).to be_truthy
    end
  end


  it "returns false if the request is not in the internal ip range" do
    allow_any_instance_of(ApiPermission).to receive(:allways_return_true_for_environment?).and_return(false)

    r = request
    skipped_subnet_values = [56,57,58,59,60,61,62]

    (0...255).each do |subnet|
      next if skipped_subnet_values.include?(subnet)
      test_ip = "10.41.#{subnet}.55"
      allow(r).to receive(:ip).and_return(test_ip)
      ap = ApiPermission.new(r)

      expect(ap.request_is_internal?).to be_falsey
    end
  end


  it "always returns true when the server is in the development environment" do
    r = request
    allow(Rails).to receive(:env).and_return('development')

    (0...255).each do |subnet|
      test_ip = "10.41.#{subnet}.192"
      allow(r).to receive(:ip).and_return(test_ip)
      ap = ApiPermission.new(r)

      expect(ap.request_is_internal?).to be_truthy
    end


  end
end