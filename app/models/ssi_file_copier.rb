
class SSIFileCopier

  def copy_all
    server_paths.each do | path |
      puts "scp -r -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no #{local_path}/* #{path}"
      system("scp -r -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no #{local_path}/* #{path}")
    end
  end


  private

    def local_path
      Rails.root.join("ssi")
    end

    def remote_host
      "#{Rails.configuration.library_ssi_user}@#{Rails.configuration.library_ssi_server}"
    end

    def env_path
      if Rails.env == 'production'
        'prod'
      else
        'pprd'
      end
    end

    def remote_base_path
      "/shared/websites/#{env_path}"
    end

    def remote_path(path)
      "#{remote_host}:#{File.join(remote_base_path, path)}"
    end

    def server_paths
      return [] if Rails.env == 'test'

      [
        remote_path("main/local_ssi"),
        remote_path("rarebooks/ssi")
      ]
    end

end
