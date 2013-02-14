class ExperienceHistoriesController < ApplicationController
  # GET /experience_histories
  # GET /experience_histories.json
  def index
    @experience_histories = ExperienceHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @experience_histories }
    end
  end

  # GET /experience_histories/1
  # GET /experience_histories/1.json
  def show
    @experience_history = ExperienceHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @experience_history }
    end
  end

  # GET /experience_histories/new
  # GET /experience_histories/new.json
  def new
    @experience_history = ExperienceHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @experience_history }
    end
  end

  # GET /experience_histories/1/edit
  def edit
    @experience_history = ExperienceHistory.find(params[:id])
  end

  # POST /experience_histories
  # POST /experience_histories.json
  def create
    @experience_history = ExperienceHistory.new(params[:experience_history])

    respond_to do |format|
      if @experience_history.save
        format.html { redirect_to @experience_history, notice: 'Experience history was successfully created.' }
        format.json { render json: @experience_history, status: :created, location: @experience_history }
      else
        format.html { render action: "new" }
        format.json { render json: @experience_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /experience_histories/1
  # PUT /experience_histories/1.json
  def update
    @experience_history = ExperienceHistory.find(params[:id])

    respond_to do |format|
      if @experience_history.update_attributes(params[:experience_history])
        format.html { redirect_to @experience_history, notice: 'Experience history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @experience_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experience_histories/1
  # DELETE /experience_histories/1.json
  def destroy
    @experience_history = ExperienceHistory.find(params[:id])
    @experience_history.destroy

    respond_to do |format|
      format.html { redirect_to experience_histories_url }
      format.json { head :no_content }
    end
  end
end
