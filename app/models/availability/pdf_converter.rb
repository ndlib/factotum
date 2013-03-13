require 'tempfile'

class Availability::PdfConverter

  def initialize(url)
    if Rails.env == 'development'
      # ensure that we can connect to an instance of rails
      @url = url.gsub('3003', '3008')
    end

    @file = "#{Dir.tmpdir}/#{Dir::Tmpname.make_tmpname(['factotum', '.pdf'], nil)}"
  end


  def convert
    `#{executable} #{@url}, #{pdf_path}`
  end


  def pdf_path
    @file
  end


  def cleanup
    File.unlink(@file)
  end


  private

    def linux?
      RUBY_PLATFORM.include?('linux')
    end


    def osx?
      RUBY_PLATFORM.include?('darwin')
    end


    def executable
      if osx?
        osx_executable
      elsif linux?
        linux_executable
      else
        raise "No wkhtmltopdf executable for windows or whatever your OS is."
      end
    end


    def osx_executable
      "#{Rails.root}/wkhtmltopdf/wkhtmltopdf.app/Contents/MacOS/wkhtmltopdf"
    end


    def linux_executable
      "#{Rails.root}/wkhtmltopdf/wkhtmltopdf-amd64"
    end
end
