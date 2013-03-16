require 'tempfile'

class UrlToPdfConverter

  def initialize(url)
    @url = url

    if Rails.env == 'development'
      # ensure that we can connect to an instance of rails
      @url = url.gsub('3003', '3008')
    end
  end


  def convert
    system("#{executable} #{@url} #{pdf_path}")
  end


  def pdf_path
    @file ||= "#{Dir.tmpdir}/#{Dir::Tmpname.make_tmpname(['factotum', '.pdf'], nil)}"
  end


  def cleanup
    File.unlink(pdf_path)
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
