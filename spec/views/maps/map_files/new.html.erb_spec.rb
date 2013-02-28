require "spec_helper"

describe "maps/map_files/new.html.erb" do

  let(:map_admin) { MapsApi.new(mock_request).map_file_admin }
  let(:new_map_file) { map_admin.map_file }
  let(:mock_request) { 
                    r = mock(ActionController::TestRequest) 
                    r.stub(:protocol).and_return('http://')
                    r.stub(:host_with_port).and_return('localhost:3333')
                    r
                  }
  
  it "displays a form to create a new map file" do
    assign(:map_file, new_map_file)

    render

    rendered.should match /form/
  end

end