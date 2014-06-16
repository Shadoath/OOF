class PlantStatusesController < ApplicationController
  before_action :set_plant_status, only: [:show, :edit, :update, :destroy]

  # GET /plant_statuses
  # GET /plant_statuses.json
  def index
    @plant_statuses = PlantStatus.all
  end

  # GET /plant_statuses/1
  # GET /plant_statuses/1.json
  def show
  end

  # GET /plant_statuses/new
  def new
    @plant_status = PlantStatus.new
  end

  # GET /plant_statuses/1/edit
  def edit
  end

  # POST /plant_statuses
  # POST /plant_statuses.json
  def create
    @plant_status = PlantStatus.new(plant_status_params)

    respond_to do |format|
      if @plant_status.save
        format.html { redirect_to @plant_status, notice: 'Plant status was successfully created.' }
        format.json { render :show, status: :created, location: @plant_status }
      else
        format.html { render :new }
        format.json { render json: @plant_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_statuses/1
  # PATCH/PUT /plant_statuses/1.json
  def update
    respond_to do |format|
      if @plant_status.update(plant_status_params)
        format.html { redirect_to @plant_status, notice: 'Plant status was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_status }
      else
        format.html { render :edit }
        format.json { render json: @plant_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_statuses/1
  # DELETE /plant_statuses/1.json
  def destroy
    @plant_status.destroy
    respond_to do |format|
      format.html { redirect_to plant_statuses_url, notice: 'Plant status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_status
      @plant_status = PlantStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_status_params
      params.require(:plant_status).permit(:name)
    end
end
