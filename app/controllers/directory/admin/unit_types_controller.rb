class Directory::UnitTypesController < ApplicationController
  # GET /directory/unit_types
  # GET /directory/unit_types.json
  def index
    @directory_unit_types = Directory::UnitType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_unit_types }
    end
  end

  # GET /directory/unit_types/1
  # GET /directory/unit_types/1.json
  def show
    @directory_unit_type = Directory::UnitType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_unit_type }
    end
  end

  # GET /directory/unit_types/new
  # GET /directory/unit_types/new.json
  def new
    @directory_unit_type = Directory::UnitType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_unit_type }
    end
  end

  # GET /directory/unit_types/1/edit
  def edit
    @directory_unit_type = Directory::UnitType.find(params[:id])
  end

  # POST /directory/unit_types
  # POST /directory/unit_types.json
  def create
    @directory_unit_type = Directory::UnitType.new(params[:directory_unit_type])

    respond_to do |format|
      if @directory_unit_type.save
        format.html { redirect_to @directory_unit_type, notice: 'Unit type was successfully created.' }
        format.json { render json: @directory_unit_type, status: :created, location: @directory_unit_type }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_unit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/unit_types/1
  # PUT /directory/unit_types/1.json
  def update
    @directory_unit_type = Directory::UnitType.find(params[:id])

    respond_to do |format|
      if @directory_unit_type.update_attributes(params[:directory_unit_type])
        format.html { redirect_to @directory_unit_type, notice: 'Unit type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_unit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/unit_types/1
  # DELETE /directory/unit_types/1.json
  def destroy
    @directory_unit_type = Directory::UnitType.find(params[:id])
    @directory_unit_type.destroy

    respond_to do |format|
      format.html { redirect_to directory_unit_types_url }
      format.json { head :no_content }
    end
  end
end
