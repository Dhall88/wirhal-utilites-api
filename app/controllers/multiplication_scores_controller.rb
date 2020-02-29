class MultiplicationScoresController < ApplicationController
  before_action :set_multiplication_score, only: [:show, :update, :destroy]

  # GET /multiplication_scores
  def index
    @multiplication_scores = MultiplicationScore.all

    render json: @multiplication_scores
  end

  # GET /multiplication_scores/1
  def show
    render json: @multiplication_score
  end

  # POST /multiplication_scores
  def create
    @multiplication_score = MultiplicationScore.new(multiplication_score_params)

    if @multiplication_score.save
      render json: @multiplication_score, status: :created, location: @multiplication_score
    else
      render json: @multiplication_score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /multiplication_scores/1
  def update
    if @multiplication_score.update(multiplication_score_params)
      render json: @multiplication_score
    else
      render json: @multiplication_score.errors, status: :unprocessable_entity
    end
  end

  # DELETE /multiplication_scores/1
  def destroy
    @multiplication_score.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multiplication_score
      @multiplication_score = MultiplicationScore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def multiplication_score_params
      params.require(:multiplication_score).permit(:score)
    end
end
