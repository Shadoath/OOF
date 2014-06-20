class HarvestTypesController < ApplicationController
  before_action :set_harvest_type, only: [:show, :edit, :update, :destroy]

  # GET /harvest_types
  # GET /harvest_types.json
  def index
    @harvest_types = HarvestType.all
  end

  # GET /harvest_types/1
  # GET /harvest_types/1.json
  def show
  end

  # GET /harvest_types/new
  def new
    @harvest_type = HarvestType.new
  end

  # GET /harvest_types/1/edit
  def edit
  end

  # POST /harvest_types
  # POST /harvest_types.json
  def create
    @harvest_type = HarvestType.new(harvest_type_params)

    respond_to do |format|
      if @harvest_type.save
        format.html { redirect_to @harvest_type, notice: 'Harvest type was successfully created.' }
        format.json { render :show, status: :created, location: @harvest_type }
      else
        format.html { render :new }
        format.json { render json: @harvest_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harvest_types/1
  # PATCH/PUT /harvest_types/1.json
  def update
    respond_to do |format|
      if @harvest_type.update(harvest_type_params)
        format.html { redirect_to @harvest_type, notice: 'Harvest type was successfully updated.' }
        format.json { render :show, status: :ok, location: @harvest_type }
      else
        format.html { render :edit }
        format.json { render json: @harvest_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harvest_types/1
  # DELETE /harvest_types/1.json
  def destroy
    @harvest_type.destroy
    respond_to do |format|
      format.html { redirect_to harvest_types_url, notice: 'Harvest type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvest_type
      @harvest_type = HarvestType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harvest_type_params
      params.require(:harvest_type).permit(:name)
    end
end
