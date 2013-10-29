class Directory::ContactInformationsController < ApplicationController
  # GET /directory/contact_informations
  # GET /directory/contact_informations.json
  def index
    @directory_contact_informations = Directory::ContactInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_contact_informations }
    end
  end

  # GET /directory/contact_informations/1
  # GET /directory/contact_informations/1.json
  def show
    @directory_contact_information = Directory::ContactInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_contact_information }
    end
  end

  # GET /directory/contact_informations/new
  # GET /directory/contact_informations/new.json
  def new
    @directory_contact_information = Directory::ContactInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_contact_information }
    end
  end

  # GET /directory/contact_informations/1/edit
  def edit
    @directory_contact_information = Directory::ContactInformation.find(params[:id])
  end

  # POST /directory/contact_informations
  # POST /directory/contact_informations.json
  def create
    @directory_contact_information = Directory::ContactInformation.new(params[:directory_contact_information])

    respond_to do |format|
      if @directory_contact_information.save
        format.html { redirect_to @directory_contact_information, notice: 'Contact information was successfully created.' }
        format.json { render json: @directory_contact_information, status: :created, location: @directory_contact_information }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_contact_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/contact_informations/1
  # PUT /directory/contact_informations/1.json
  def update
    @directory_contact_information = Directory::ContactInformation.find(params[:id])

    respond_to do |format|
      if @directory_contact_information.update_attributes(params[:directory_contact_information])
        format.html { redirect_to @directory_contact_information, notice: 'Contact information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_contact_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/contact_informations/1
  # DELETE /directory/contact_informations/1.json
  def destroy
    @directory_contact_information = Directory::ContactInformation.find(params[:id])
    @directory_contact_information.destroy

    respond_to do |format|
      format.html { redirect_to directory_contact_informations_url }
      format.json { head :no_content }
    end
  end
end
