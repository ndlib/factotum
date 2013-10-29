class Directory::AdministrativeUsersController < ApplicationController
  # GET /directory/administrative_users
  # GET /directory/administrative_users.json
  def index
    @directory_administrative_users = Directory::AdministrativeUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_administrative_users }
    end
  end

  # GET /directory/administrative_users/1
  # GET /directory/administrative_users/1.json
  def show
    @directory_administrative_user = Directory::AdministrativeUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_administrative_user }
    end
  end

  # GET /directory/administrative_users/new
  # GET /directory/administrative_users/new.json
  def new
    @directory_administrative_user = Directory::AdministrativeUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_administrative_user }
    end
  end

  # GET /directory/administrative_users/1/edit
  def edit
    @directory_administrative_user = Directory::AdministrativeUser.find(params[:id])
  end

  # POST /directory/administrative_users
  # POST /directory/administrative_users.json
  def create
    @directory_administrative_user = Directory::AdministrativeUser.new(params[:directory_administrative_user])

    respond_to do |format|
      if @directory_administrative_user.save
        format.html { redirect_to @directory_administrative_user, notice: 'Administrative user was successfully created.' }
        format.json { render json: @directory_administrative_user, status: :created, location: @directory_administrative_user }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_administrative_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/administrative_users/1
  # PUT /directory/administrative_users/1.json
  def update
    @directory_administrative_user = Directory::AdministrativeUser.find(params[:id])

    respond_to do |format|
      if @directory_administrative_user.update_attributes(params[:directory_administrative_user])
        format.html { redirect_to @directory_administrative_user, notice: 'Administrative user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_administrative_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/administrative_users/1
  # DELETE /directory/administrative_users/1.json
  def destroy
    @directory_administrative_user = Directory::AdministrativeUser.find(params[:id])
    @directory_administrative_user.destroy

    respond_to do |format|
      format.html { redirect_to directory_administrative_users_url }
      format.json { head :no_content }
    end
  end
end
