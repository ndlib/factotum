require 'rails_helper'

describe DepartmentView do


  describe "#phones" do

    context :phones_blank do

      before(:each) do
        @department = double(DirectoryDepartment, :phones => nil, :managers => [double(DirectoryEmployee, :phones => [double(DirectoryContactPhone, :contact_information => '111-1111', :is_primary? => true), double(DirectoryContactPhone, :contact_information => '222-2222', :is_primary? => false)])])
        @department_view = DepartmentView.new(@department)
      end

      it "should return correct number of primary phone numbers" do
        expect(@department_view.phones.size).to eq(1)
      end

      it "should return the correct phone number for a primary contact" do
        expect(@department_view.phones.first).to eq '111-1111'
      end

    end

    context :phones_not_blank do

      before(:each) do
        @department1 = double(DirectoryDepartment, :phones => [double(DirectoryContactPhone, :contact_information => '333-3333', :is_primary? => true), double(DirectoryContactPhone, :contact_information => '444-4444', :is_primary? => true)], :managers => [double(DirectoryEmployee, :phones => [double(DirectoryContactPhone, :contact_information => '111-1111', :is_primary? => true), double(DirectoryContactPhone, :contact_information => '222-2222', :is_primary? => false)])])
        @department2 = double(DirectoryDepartment, :phones => nil, :managers => [double(DirectoryEmployee, :phones => [double(DirectoryContactPhone, :contact_information => '111-1111', :is_primary? => false), double(DirectoryContactPhone, :contact_information => '222-2222', :is_primary? => false)])])
        @department_view1 = DepartmentView.new(@department1)
        @department_view2 = DepartmentView.new(@department2)
      end

      it "should return correct number of primary phone numbers" do
        expect(@department_view1.phones.size).to eq(2)
      end

      it "should return the correct phone number for a primary contact" do
        expect(@department_view1.phones.first).to eq '333-3333'
      end

      it "should not return any phone numbers if none are primary" do
        expect(@department_view2.phones).to be_empty
      end

    end
  end


  describe "#websites" do

    context :websites_blank do

      before(:each) do
        @department = double(DirectoryDepartment, :websites => nil, :is_primary? => false)
        @department_view = DepartmentView.new(@department)
      end

      it "should return zero websites" do
        expect(@department_view.websites).to be_empty
      end

    end

    context :websites_not_blank do

      before(:each) do
        @department1 = double(DirectoryDepartment, :websites => [double(DirectoryContactWebpage, :contact_information => 'http://www.nothing.com', :is_primary? => true), double(DirectoryContactWebpage, :contact_information => 'http://www.nonprimary.com', :is_primary? => false)])
        @department2 = double(DirectoryDepartment, :websites => [double(DirectoryContactWebpage, :contact_information => 'http://www.nothing.com', :is_primary? => false), double(DirectoryContactWebpage, :contact_information => 'http://www.nonprimary.com', :is_primary? => false)])
        @department_view1 = DepartmentView.new(@department1)
        @department_view2 = DepartmentView.new(@department2)
      end

      it "should return correct number of primary websites" do
        expect(@department_view1.websites.size).to eq(1)
      end

      it "should not return any phone numbers if none are primary" do
        expect(@department_view2.websites).to be_empty
      end

    end
  end


  describe "#emails" do

    context :emails_blank do

      before(:each) do
        @department = double(DirectoryDepartment, :emails => nil, :managers => [double(DirectoryEmployee, :emails => [double(DirectoryContactEmail, :contact_information => 'fake@nd.edu', :is_primary? => true), double(DirectoryContactEmail, :contact_information => 'also.fake@nd.edu', :is_primary? => false)])])
        @department_view = DepartmentView.new(@department)
      end

      it "should return correct number of primary emails" do
        expect(@department_view.emails.size).to eq(1)
      end

      it "should return the correct email for a primary contact" do
        expect(@department_view.emails.first).to eq 'fake@nd.edu'
      end

    end

    context :emails_not_blank do

      before(:each) do
        @department1 = double(DirectoryDepartment, :emails => [double(DirectoryContactEmail, :contact_information => 'fake@nd.edu', :is_primary? => true), double(DirectoryContactEmail, :contact_information => 'also.fake@nd.edu', :is_primary? => true)], :managers => [double(DirectoryEmployee, :emails => [double(DirectoryContactEmail, :contact_information => 'manager.fake@nd.edu', :is_primary? => true), double(DirectoryContactEmail, :contact_information => 'also.manager.fake@nd.edu', :is_primary? => false)])])
        @department2 = double(DirectoryDepartment, :emails => nil, :managers => [double(DirectoryEmployee, :emails => [double(DirectoryContactEmail, :contact_information => 'fake2@nd.edu', :is_primary? => false), double(DirectoryContactEmail, :contact_information => 'fake3@nd.edu', :is_primary? => false)])])
        @department_view1 = DepartmentView.new(@department1)
        @department_view2 = DepartmentView.new(@department2)
      end

      it "should return correct number of primary phone numbers" do
        expect(@department_view1.emails.size).to eq(2)
      end

      it "should return the correct phone number for a primary contact" do
        expect(@department_view1.emails.first).to eq 'fake@nd.edu'
      end

      it "should not return any phone numbers if none are primary" do
        expect(@department_view2.emails).to be_empty
      end

    end
  end


  describe "#addresses" do

    context :addresses_blank do

      before(:each) do
        @department = double(DirectoryDepartment, :addresses => nil, :managers => [double(DirectoryEmployee, :addresses => [double(DirectoryContactAddress, :contact_information => '111 Nowhere', :is_primary? => true), double(DirectoryContactAddress, :contact_information => '111 Nowhere Again', :is_primary? => false)])])
        @department_view = DepartmentView.new(@department)
      end

      it "should return correct number of primary addresses" do
        expect(@department_view.addresses.size).to eq(1)
      end

      it "should return the correct email for a primary contact" do
        expect(@department_view.addresses.first).to eq '111 Nowhere'
      end

    end

    context :addresses_not_blank do

      before(:each) do
        @department1 = double(DirectoryDepartment, :addresses => [double(DirectoryContactAddress, :contact_information => '111 Nowhere', :is_primary? => true), double(DirectoryContactAddress, :contact_information => '111 Nowhere Again', :is_primary? => true)], :managers => [double(DirectoryEmployee, :addresses => [double(DirectoryContactAddress, :contact_information => 'manager.111 Nowhere', :is_primary? => true), double(DirectoryContactAddress, :contact_information => '111 Nowhere Again', :is_primary? => false)])])
        @department2 = double(DirectoryDepartment, :addresses => nil, :managers => [double(DirectoryEmployee, :addresses => [double(DirectoryContactAddress, :contact_information => '222 Nowhere', :is_primary? => false), double(DirectoryContactAddress, :contact_information => '333 Nowhere', :is_primary? => false)])])
        @department_view1 = DepartmentView.new(@department1)
        @department_view2 = DepartmentView.new(@department2)
      end

      it "should return correct number of primary phone numbers" do
        expect(@department_view1.addresses.size).to eq(2)
      end

      it "should return the correct phone number for a primary contact" do
        expect(@department_view1.addresses.first).to eq '111 Nowhere'
      end

      it "should not return any phone numbers if none are primary" do
        expect(@department_view2.addresses).to be_empty
      end

    end
  end

end
