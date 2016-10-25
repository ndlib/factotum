require 'rails_helper'

describe SSIFileWriter do

  it "underscores the directory" do
    sfw = SSIFileWriter.new('dir ectory', 'file')
    expect(sfw.directory).to eq("dir_ectory")
  end


  it "downcases the directory" do
    sfw = SSIFileWriter.new('dirEctoRy', 'file')
    expect(sfw.directory).to eq("directory")
  end


  it "underscores the filename" do
    sfw = SSIFileWriter.new('directory', 'fi le')
    expect(sfw.file_name).to eq("fi_le")
  end


  it "downcases the filename" do
    sfw = SSIFileWriter.new('directory', 'FILe')
    expect(sfw.file_name).to eq("file")
  end


  it "builds file path" do
    allow(File).to receive(:directory?).and_return(true)

    sfw = SSIFileWriter.new('directory', 'file')
    expect(sfw.send(:file_path)).to eq(Rails.root.join("ssi/directory/file.shtml"))
  end


  it "makes a direcory to put the file in if one does not exist" do
    allow(File).to receive(:directory?).and_return(false)

    expect(FileUtils).to receive(:mkdir_p).and_return(true)

    sfw = SSIFileWriter.new('directory', 'file')
    expect(sfw.send(:file_path)).to eq(Rails.root.join("ssi/directory/file.shtml"))
  end


  it "renders the partial passed into the writer" do
    allow(File).to receive(:directory?).and_return(true)
    allow(File).to receive(:open).and_return(false)

    sfw = SSIFileWriter.new('directory', 'file')
    allow(sfw).to receive(:context).and_return(Object.new)
    expect(sfw.send(:context)).to receive(:render_to_string).and_return("text")

    sfw.write('partial', {} )
  end


  it "writes an the file out" do
    allow(File).to receive(:directory?).and_return(true)
    expect(File).to receive(:open).and_return(false)

    sfw = SSIFileWriter.new('directory', 'file')
    allow(sfw).to receive(:context).and_return(Object.new)
    expect(sfw.send(:context)).to receive(:render_to_string).and_return("text")

    sfw.write('partial', {} )
  end
end
