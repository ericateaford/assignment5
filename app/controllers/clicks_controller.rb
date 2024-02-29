class ClicksController < ApplicationController
  before_action :set_click, only: %i[ show edit update destroy ]

  # GET /clicks
  def index
    @clicks = Click.all.count
  end

  # GET /clicks/1
  def show
  end

  # GET /clicks/new
  def new
    @click = Click.new
  end

  # GET /clicks/1/edit
  def edit
  end

  # POST /clicks
  def create
    @click = Click.new(click_params)

    if @click.save
      redirect_to @click, notice: "Click was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clicks/1
  def update
    if @click.update(click_params)
      redirect_to @click, notice: "Click was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /clicks/1
  def destroy
    @click.destroy!
    redirect_to clicks_url, notice: "Click was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_click
      @click = Click.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def click_params
      params.fetch(:click, {})
    end
end
