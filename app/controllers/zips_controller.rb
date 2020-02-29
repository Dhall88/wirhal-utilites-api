class ZipsController < ApplicationController
  before_action :set_zip, only: [:show, :update, :destroy]

  # GET /zips
  def index
    @zips = Zip.all

    render json: @zips
  end

  # GET /zips/1
  def show
    render json: @zip
  end

  # POST /zips
  def create
    @zip = Zip.new(zip_params)
    p 'in else of post in rails'

    if @zip.save
      render json: @zip, status: :created, location: @zip
    else
      render json: @zip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /zips/1
  def update
    if @zip.update(zip_params)
      render json: @zip
    else
      render json: @zip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /zips/1
  def destroy
    @zip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zip
      @zip = Zip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def zip_params
      params.require(:zip).permit(:zip)
    end
end
