

class SSIFileProcessor


  def self.generate_and_copy_files
    MapsApi.new.generate_all_ssi_files
    HoursApi.new(ApplicationController.new).generate_all_ssi_files

    SSIFileCopier.new().copy_all
  end
end
