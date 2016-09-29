require 'rails_helper'

describe SSIFileWriter do

  it "underscores the directory" do
    sfw = SSIFileWriter.new('dir ectory', 'file')
    sfw.directory.should == "dir_ectory"
  end


  it "downcases the directory" do
    sfw = SSIFileWriter.new('dirEctoRy', 'file')
    sfw.directory.should == "directory"
  end


  it "underscores the filename" do
    sfw = SSIFileWriter.new('directory', 'fi le')
    sfw.file_name.should == "fi_le"
  end


  it "downcases the filename" do
    sfw = SSIFileWriter.new('directory', 'FILe')
    sfw.file_name.should == "file"
  end


  it "builds file path" do
    File.stub(:directory?).and_return(true)

    sfw = SSIFileWriter.new('directory', 'file')
    sfw.send(:file_path).should == Rails.root.join("ssi/directory/file.shtml")
  end


  it "makes a direcory to put the file in if one does not exist" do
    File.stub(:directory?).and_return(false)

    FileUtils.should_receive(:mkdir_p).and_return(true)

    sfw = SSIFileWriter.new('directory', 'file')
    sfw.send(:file_path).should == Rails.root.join("ssi/directory/file.shtml")
  end


  it "renders the partial passed into the writer" do
    File.stub(:directory?).and_return(true)
    File.stub(:open).and_return(false)

    sfw = SSIFileWriter.new('directory', 'file')
    sfw.stub(:context).and_return(Object.new)
    sfw.send(:context).should_receive(:render_to_string).and_return("text")

    sfw.write('partial', {} )
  end


  it "writes an the file out" do
    File.stub(:directory?).and_return(true)
    File.should_receive(:open).and_return(false)

    sfw = SSIFileWriter.new('directory', 'file')
    sfw.stub(:context).and_return(Object.new)
    sfw.send(:context).should_receive(:render_to_string).and_return("text")

    sfw.write('partial', {} )
  end
end
