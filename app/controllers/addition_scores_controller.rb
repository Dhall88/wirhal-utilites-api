class AdditionScoresController < ApplicationController
  before_action :set_addition_score, only: [:show, :update, :destroy]

  # GET /addition_scores
  def index
    @addition_scores = AdditionScore.all

    render json: @addition_scores
  end

  # GET /addition_scores/1
  def show
    render json: @addition_score
  end

  # POST /addition_scores
  def create
    @addition_score = AdditionScore.new(addition_score_params)

    if @addition_score.save
      render json: @addition_score, status: :created, location: @addition_score
    else
      render json: @addition_score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /addition_scores/1
  def update
    if @addition_score.update(addition_score_params)
      render json: @addition_score
    else
      render json: @addition_score.errors, status: :unprocessable_entity
    end
  end

  # DELETE /addition_scores/1
  def destroy
    @addition_score.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addition_score
      @addition_score = AdditionScore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def addition_score_params
      params.require(:addition_score).permit(:score)
    end
end
