class BarScoresController < ApplicationController
  before_action :set_bar_score, only: [:show, :update, :destroy]

  # GET /bar_scores
  def index
    @bar_scores = BarScore.all

    render json: @bar_scores
  end

  # GET /bar_scores/1
  def show
    render json: @bar_score
  end

  # POST /bar_scores
  def create
    @bar_score = BarScore.new(bar_score_params)

    if @bar_score.save
      render json: @bar_score, status: :created, location: @bar_score
    else
      render json: @bar_score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bar_scores/1
  def update
    if @bar_score.update(bar_score_params)
      render json: @bar_score
    else
      render json: @bar_score.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bar_scores/1
  def destroy
    @bar_score.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar_score
      @bar_score = BarScore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bar_score_params
      params.require(:bar_score).permit(:score)
    end
end
