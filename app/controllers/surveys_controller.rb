class SurveysController < ApplicationController
  before_action :set_survey, only: %i[ show edit update destroy ]

  def index
    @surveys = Survey.all
  end

  
  # GET /surveys/1
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
  end

  # GET /surveys/1/edit
  def edit
  end

  # POST /surveyss
  def create 
    @survey = Survey.new(survey_params) 

    if @survey.save
      redirect_to root_path, notice: "Survey was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      redirect_to root_path, notice: "Survey was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end 
  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy!
    redirect_to root_path, notice: "Survey was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id]) 
    end

    # Only allow a list of trusted parameters through.
    def survey_params
      params.require(:survey).permit(:title, :description)
    end 
end
