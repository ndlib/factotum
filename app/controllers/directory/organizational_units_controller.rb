class Directory::OrganizationalUnitsController < ApplicationController
  # GET /directory/organizational_units
  # GET /directory/organizational_units.json
  def index
    @directory_organizational_units = Directory::OrganizationalUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_organizational_units }
    end
  end

  # GET /directory/organizational_units/1
  # GET /directory/organizational_units/1.json
  def show
    @directory_organizational_unit = Directory::OrganizationalUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_organizational_unit }
    end
  end

  # GET /directory/organizational_units/new
  # GET /directory/organizational_units/new.json
  def new
    @directory_organizational_unit = Directory::OrganizationalUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_organizational_unit }
    end
  end

  # GET /directory/organizational_units/1/edit
  def edit
    @directory_organizational_unit = Directory::OrganizationalUnit.find(params[:id])
  end

  # POST /directory/organizational_units
  # POST /directory/organizational_units.json
  def create
    @directory_organizational_unit = Directory::OrganizationalUnit.new(params[:directory_organizational_unit])

    respond_to do |format|
      if @directory_organizational_unit.save
        format.html { redirect_to @directory_organizational_unit, notice: 'Organizational unit was successfully created.' }
        format.json { render json: @directory_organizational_unit, status: :created, location: @directory_organizational_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_organizational_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/organizational_units/1
  # PUT /directory/organizational_units/1.json
  def update
    @directory_organizational_unit = Directory::OrganizationalUnit.find(params[:id])

    respond_to do |format|
      if @directory_organizational_unit.update_attributes(params[:directory_organizational_unit])
        format.html { redirect_to @directory_organizational_unit, notice: 'Organizational unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_organizational_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/organizational_units/1
  # DELETE /directory/organizational_units/1.json
  def destroy
    @directory_organizational_unit = Directory::OrganizationalUnit.find(params[:id])
    @directory_organizational_unit.destroy

    respond_to do |format|
      format.html { redirect_to directory_organizational_units_url }
      format.json { head :no_content }
    end
  end
end
