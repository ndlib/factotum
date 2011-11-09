class AcquisitionExportsController < ApplicationController
  def index
    new
    render :action => 'new'
  end
  
  def new
    @export = setup_acquisition_export
  end
  
  def create
    @export = setup_acquisition_export
    if @export.save
      send_data(@export.to_csv(host_prefix()), :filename => @export.filename, :type => "text/csv")
    else
      render :action => 'new'
    end
  end
  
  private
    def setup_acquisition_export
      params[:export] ||= export_defaults()
      export = AcquisitionExport.new(params[:export])
      export
    end
    
    def export_defaults
      defaults = {:end_date => Date.today}
      first_order = JustSayYesOrder.order("created_at ASC").first
      if first_order.present?
        defaults[:start_date] = first_order.created_at.to_date
      else
        defaults[:start_date] = Date.today
      end
      defaults
    end
end
