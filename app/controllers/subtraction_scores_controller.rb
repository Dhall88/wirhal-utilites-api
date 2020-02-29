class SubtractionScoresController < ApplicationController
  before_action :set_subtraction_score, only: [:show, :update, :destroy]

  # GET /subtraction_scores
  def index
    @subtraction_scores = SubtractionScore.all

    render json: @subtraction_scores
  end

  # GET /subtraction_scores/1
  def show
    render json: @subtraction_score
  end

  # POST /subtraction_scores
  def create
    @subtraction_score = SubtractionScore.new(subtraction_score_params)

    if @subtraction_score.save
      render json: @subtraction_score, status: :created, location: @subtraction_score
    else
      render json: @subtraction_score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subtraction_scores/1
  def update
    if @subtraction_score.update(subtraction_score_params)
      render json: @subtraction_score
    else
      render json: @subtraction_score.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subtraction_scores/1
  def destroy
    @subtraction_score.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtraction_score
      @subtraction_score = SubtractionScore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subtraction_score_params
      params.require(:subtraction_score).permit(:score)
    end
end
