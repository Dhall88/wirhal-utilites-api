class DivisionScoresController < ApplicationController
  before_action :set_division_score, only: [:show, :update, :destroy]

  # GET /division_scores
  def index
    @division_scores = DivisionScore.all

    render json: @division_scores
  end

  # GET /division_scores/1
  def show
    render json: @division_score
  end

  # POST /division_scores
  def create
    @division_score = DivisionScore.new(division_score_params)

    if @division_score.save
      render json: @division_score, status: :created, location: @division_score
    else
      render json: @division_score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /division_scores/1
  def update
    if @division_score.update(division_score_params)
      render json: @division_score
    else
      render json: @division_score.errors, status: :unprocessable_entity
    end
  end

  # DELETE /division_scores/1
  def destroy
    @division_score.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_division_score
      @division_score = DivisionScore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def division_score_params
      params.require(:division_score).permit(:score)
    end
end
