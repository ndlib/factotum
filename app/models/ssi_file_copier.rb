
class SSIFileCopier

  def copy_all
    server_paths.each do | path |
      system("scp -r #{local_path}/* #{path}")
    end
  end


  private

    def local_path
      path = Rails.root.join("ssi")
    end


    def server_paths
      return [] if Rails.env == 'test'

      if Rails.env == 'production'
        append_env_path = '/local_ssi'
        server = "rbprod@peter.library.nd.edu:"

        ret = [ "#{server}/data/web_root/htdocs/rarebooks/ssi" ]
      else
        append_env_path = '_staging/local_ssi'
        server = "rbpprd@peter.library.nd.edu:"

        ret = [ "#{server}/data/web_root/htdocs/rarebooks_staging/ssi" ]
      end

      ret + [
        "#{server}/data/web_root/htdocs/main#{append_env_path}",
        "#{server}/data/web_root/htdocs/architecture#{append_env_path}",
        "#{server}/data/web_root/htdocs/bic#{append_env_path}",
        "#{server}/data/web_root/htdocs/chemistry#{append_env_path}",
        "#{server}/data/web_root/htdocs/engineering#{append_env_path}",
        "#{server}/data/web_root/htdocs/kkic#{append_env_path}",
        "#{server}/data/web_root/htdocs/mathematics#{append_env_path}",
        "#{server}/data/web_root/htdocs/radlab#{append_env_path}",
        "#{server}/data/web_root/htdocs/vrc#{append_env_path}",
      ]

    end

end
