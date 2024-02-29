class QuotesController < ApplicationController
  before_action :set_quote, only: %i[ show edit update destroy upvote ]

  # GET /quotes
  def index
    @quotes = Quote.all
  end

  def home 
    @quote = quote.first if quote.any?
  end

  def upvote 
    @quote =  quote.find(params[:id])
    @quote.increment!(:upvote)

    redirect_to root_path
  end
  
  # GET /quotes/1
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes
  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to @quote, notice: "Quote was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quotes/1
  def update
    if @quote.update(quote_params)
      redirect_to @quote, notice: "Quote was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /quotes/1
  def destroy
    @quote.destroy!
    redirect_to quotes_url, notice: "Quote was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.require(:quote).permit(:saying, :said_by, :votes)
    end
end
