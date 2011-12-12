class EjournalController < ApplicationController
  def index
    render :layout => 'library_two_column'
  end
  
  def search
    @show_az = false
  end
end
