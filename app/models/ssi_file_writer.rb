
class SSIFileWriter
  attr_reader :content_type, :directory, :file_name

  def initialize(directory, file_name)
    @directory = sanitize_file_name(directory)
    @file_name = sanitize_file_name(file_name)
  end


  def write(partial, locals = {})
    content = render_partial(partial, locals)

    File.open(file_path.join(file_path), "w") { |f| f << content }
  end


  private

    def render_partial(partial, locals)
      context.render_to_string(:partial => partial, locals: locals )
    end


    def context
      @context ||= ApplicationController.new
    end


    def file_path
      path = Rails.root.join("ssi").join(directory)

      unless File.directory?(path)
        FileUtils.mkdir_p(path)
      end

      path.join("#{file_name}.shtml")
    end


    def sanitize_file_name(file_name)
      file_name.downcase.gsub(/\s+/, '_')
    end
end
