require 'spec_helper'

describe EmployeeShowView do
  let(:directory_user) { double(Directory::User, :username => 'userme', :admin? => false) }

  before(:each) do
    @employee = double(DirectoryEmployee, about_text: "**Something Special** ---- *emphasize this*")
    @permission = Directory::Permission.new(directory_user)
    
    @esv = EmployeeShowView.new(@employee, @permission)
  end


  describe "render markdown" do

    it "should create a valid markdown parser" do
      @esv.markdown_parser.should be_kind_of(Redcarpet::Markdown)
    end

    it "renders markdown provided in about field" do
      @esv.render_about_text.should == "<p><strong>Something Special</strong> ---- <em>emphasize this</em></p>\n"
    end

  end

end