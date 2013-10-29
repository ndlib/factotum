class Directory::EmployeeRanksController < ApplicationController
  # GET /directory/employee_ranks
  # GET /directory/employee_ranks.json
  def index
    @directory_employee_ranks = Directory::EmployeeRank.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_employee_ranks }
    end
  end

  # GET /directory/employee_ranks/1
  # GET /directory/employee_ranks/1.json
  def show
    @directory_employee_rank = Directory::EmployeeRank.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_employee_rank }
    end
  end

  # GET /directory/employee_ranks/new
  # GET /directory/employee_ranks/new.json
  def new
    @directory_employee_rank = Directory::EmployeeRank.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_employee_rank }
    end
  end

  # GET /directory/employee_ranks/1/edit
  def edit
    @directory_employee_rank = Directory::EmployeeRank.find(params[:id])
  end

  # POST /directory/employee_ranks
  # POST /directory/employee_ranks.json
  def create
    @directory_employee_rank = Directory::EmployeeRank.new(params[:directory_employee_rank])

    respond_to do |format|
      if @directory_employee_rank.save
        format.html { redirect_to @directory_employee_rank, notice: 'Employee rank was successfully created.' }
        format.json { render json: @directory_employee_rank, status: :created, location: @directory_employee_rank }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_employee_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/employee_ranks/1
  # PUT /directory/employee_ranks/1.json
  def update
    @directory_employee_rank = Directory::EmployeeRank.find(params[:id])

    respond_to do |format|
      if @directory_employee_rank.update_attributes(params[:directory_employee_rank])
        format.html { redirect_to @directory_employee_rank, notice: 'Employee rank was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_employee_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/employee_ranks/1
  # DELETE /directory/employee_ranks/1.json
  def destroy
    @directory_employee_rank = Directory::EmployeeRank.find(params[:id])
    @directory_employee_rank.destroy

    respond_to do |format|
      format.html { redirect_to directory_employee_ranks_url }
      format.json { head :no_content }
    end
  end
end
