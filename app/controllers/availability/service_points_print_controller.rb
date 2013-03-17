class Availability::ServicePointsPrintController <  PrintController

  def show
    @service_point = hours_api.service_point(params[:id])
    render :layout => 'print'
  end


  def print
    service_point = hours_api.service_point(params[:id])

    @pdf = UrlToPdfConverter.new(availability_service_point_url(service_point))

    @pdf.convert

    send_file(@pdf.pdf_path, :filename => "#{service_point.name}.pdf", :type => 'application/pdf')
  end

  private

    def hours_api
      @hours_api ||= HoursApi.new(self)
    end

end
