class Maps::MapFileAdmin 

  def map_files
    map_file_source.all
  end


  def map_file(id = false)
    if id 
      map_file_source.find(id)
    else
      map_file_source.new
    end
  end

  
  def new_map_file(params)
    map_file = map_file_source.new(params)
    map_file.save()

    map_file
  end

  
  def update_map_file(map_file, params)
    map_file.update_attributes(params)

    map_file
  end


  def delete_map_file(map_file)
    map_file.destroy()
  end

  private 

    def map_file_source
      Maps::MapFile
    end


end