module PrecompileMacros
  def enable_asset_precompiling
    # Enable compiled assets in the config
    config = Rails.application.config
    config.assets.compile = false
    config.assets.digest  = true
    config.assets.prefix = "assets_test_precompile"
    config.assets.digests = {}

    # Precompile the assets, taken from actionpack rake task
    env      = Rails.application.assets
    target   = File.join(Rails.public_path, config.assets.prefix)
    compiler = Sprockets::StaticCompiler.new(env,
                                             target,
                                             config.assets.precompile,
                                             :manifest_path => config.assets.manifest,
                                             :digest => config.assets.digest,
                                             :manifest => true)
    compiler.compile

    # Reload the manifest file and digests
    config = Rails.application.config
    if config.assets.manifest
      path = File.join(config.assets.manifest, "manifest.yml")
    else
      path = File.join(Rails.public_path, config.assets.prefix, "manifest.yml")
    end
    config.assets.digests = {}
    if File.exist?(path)
      config.assets.digests = YAML.load_file(path)
    end
  end

  def disable_asset_precompiling
    config = Rails.application.config
    # Disable compiled assets in the configuration
    config.assets.compile = true
    config.assets.digest  = false
    target = File.join(Rails.public_path, config.assets.prefix)
    config.assets.prefix = "assets"
    # Delete the precompiled assets
    FileUtils.rm_rf(target)
  end
end
