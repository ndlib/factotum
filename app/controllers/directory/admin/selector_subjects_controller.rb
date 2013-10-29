class Directory::SelectorSubjectsController < ApplicationController
  # GET /directory/selector_subjects
  # GET /directory/selector_subjects.json
  def index
    @directory_selector_subjects = Directory::SelectorSubject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_selector_subjects }
    end
  end

  # GET /directory/selector_subjects/1
  # GET /directory/selector_subjects/1.json
  def show
    @directory_selector_subject = Directory::SelectorSubject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_selector_subject }
    end
  end

  # GET /directory/selector_subjects/new
  # GET /directory/selector_subjects/new.json
  def new
    @directory_selector_subject = Directory::SelectorSubject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_selector_subject }
    end
  end

  # GET /directory/selector_subjects/1/edit
  def edit
    @directory_selector_subject = Directory::SelectorSubject.find(params[:id])
  end

  # POST /directory/selector_subjects
  # POST /directory/selector_subjects.json
  def create
    @directory_selector_subject = Directory::SelectorSubject.new(params[:directory_selector_subject])

    respond_to do |format|
      if @directory_selector_subject.save
        format.html { redirect_to @directory_selector_subject, notice: 'Selector subject was successfully created.' }
        format.json { render json: @directory_selector_subject, status: :created, location: @directory_selector_subject }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_selector_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/selector_subjects/1
  # PUT /directory/selector_subjects/1.json
  def update
    @directory_selector_subject = Directory::SelectorSubject.find(params[:id])

    respond_to do |format|
      if @directory_selector_subject.update_attributes(params[:directory_selector_subject])
        format.html { redirect_to @directory_selector_subject, notice: 'Selector subject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_selector_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/selector_subjects/1
  # DELETE /directory/selector_subjects/1.json
  def destroy
    @directory_selector_subject = Directory::SelectorSubject.find(params[:id])
    @directory_selector_subject.destroy

    respond_to do |format|
      format.html { redirect_to directory_selector_subjects_url }
      format.json { head :no_content }
    end
  end
end
