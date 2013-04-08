class Availability::HoursPrintController <  PrintController

  def show
    @service_point = service_point
    @hours = service_point.hours.find(params[:id])

    render :layout => 'print'
  end


  def print
    hours = service_point.hours.find(params[:id])

    @pdf = UrlToPdfConverter.new(availability_service_point_hours_print_url(service_point, hours))

    @pdf.convert

    send_file(@pdf.pdf_path, :filename => "#{service_point.name}.pdf", :type => 'application/pdf')
  end


  private

    def hours_api
      @hours_api ||= HoursApi.new(self)
    end


    def service_point
      @service_point ||= hours_api.service_point(params[:service_point_id])
    end

end
