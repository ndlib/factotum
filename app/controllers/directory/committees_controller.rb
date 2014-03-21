class Directory::CommitteesController < Directory::ApplicationController
  # viewable by the public
  layout Proc.new { |controller| controller.request.params[:print] ? "print" : "application" }


  def index
    @orgs = org_type.sorted.all

    @permission = permission
    @type_name = type_name

    respond_to do |format|
      format.html
      format.json { render json: @orgs }
    end
    
  end


  def show
    @committee = DirectoryOrganizationalUnit.find(params[:id])
    @org_type = org_type
    
    @permission = permission
    @type_name = type_name

    respond_to do |format|
      format.html
      format.json { render json: @committee }
    end
  end


  private


  def org_type
    params[:type].camelize.constantize
  end

  def type_name
    params[:type].sub("Directory","").tableize.humanize.titleize
  end

end
