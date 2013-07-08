
class SSIFileCopier

  def copy_all
    server_paths.each do | path |
      puts "scp -r -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no #{local_path}/* #{path}"
      system("scp -r -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no #{local_path}/* #{path}")
    end
  end


  private

    def local_path
      path = Rails.root.join("ssi")
    end


    def server_paths
      return [] if Rails.env == 'test'

      server = "libweb@david.library.nd.edu:"

      if Rails.env == 'production'
        env_path = 'prod'
      else
        env_path = 'pprd'
      end

      [
        "#{server}/shared/websites/#{env_path}/main/local_ssi",
        "#{server}/shared/websites/#{env_path}/rarebooks/ssi",
      ]

    end

end
