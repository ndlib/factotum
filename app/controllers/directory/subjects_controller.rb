class Directory::SubjectsController < ApplicationController
  # GET /directory/subjects
  # GET /directory/subjects.json
  def index
    @directory_subjects = Directory::Subject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_subjects }
    end
  end

  # GET /directory/subjects/1
  # GET /directory/subjects/1.json
  def show
    @directory_subject = Directory::Subject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_subject }
    end
  end

  # GET /directory/subjects/new
  # GET /directory/subjects/new.json
  def new
    @directory_subject = Directory::Subject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_subject }
    end
  end

  # GET /directory/subjects/1/edit
  def edit
    @directory_subject = Directory::Subject.find(params[:id])
  end

  # POST /directory/subjects
  # POST /directory/subjects.json
  def create
    @directory_subject = Directory::Subject.new(params[:directory_subject])

    respond_to do |format|
      if @directory_subject.save
        format.html { redirect_to @directory_subject, notice: 'Subject was successfully created.' }
        format.json { render json: @directory_subject, status: :created, location: @directory_subject }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/subjects/1
  # PUT /directory/subjects/1.json
  def update
    @directory_subject = Directory::Subject.find(params[:id])

    respond_to do |format|
      if @directory_subject.update_attributes(params[:directory_subject])
        format.html { redirect_to @directory_subject, notice: 'Subject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/subjects/1
  # DELETE /directory/subjects/1.json
  def destroy
    @directory_subject = Directory::Subject.find(params[:id])
    @directory_subject.destroy

    respond_to do |format|
      format.html { redirect_to directory_subjects_url }
      format.json { head :no_content }
    end
  end
end
