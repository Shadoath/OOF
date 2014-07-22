class HarvestingRecordsController < ApplicationController
  before_action :set_harvesting_record, only: [:show, :edit, :update, :destroy]

  # GET /harvesting_records
  # GET /harvesting_records.json
  def index
    @harvesting_records = HarvestingRecord.all
  end

  # GET /harvesting_records/1
  # GET /harvesting_records/1.json
  def show
  end

  # GET /harvesting_records/new
  def new
     puts "AP params =  #{params}"+ params.to_s
    @selectedActivePlantID = params[:format]
    @harvesting_record = HarvestingRecord.new
  end

  # GET /harvesting_records/1/edit
  def edit
  end

  # POST /harvesting_records
  # POST /harvesting_records.json
  def create
     puts "params = "+params.inspect
     puts "harvesting_record_params = "+harvesting_record_params.inspect
    @harvesting_record = HarvestingRecord.new(harvesting_record_params)
     activePlant = ActivePlant.find(harvesting_record_params[:active_plant_id])
     if activePlant.plant.harvest_type.name == "Single Harvest"
        puts "Single Harvest reducing active plant count."
        activePlant.count_active - harvesting_record_params[:count_harvested].to_i
        activePlant.save
     end
    respond_to do |format|
      if @harvesting_record.save
        format.html { redirect_to @harvesting_record, notice: 'Harvesting record was successfully created.' }
        format.json { render :show, status: :created, location: @harvesting_record }
      else
        format.html { render :new }
        format.json { render json: @harvesting_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harvesting_records/1
  # PATCH/PUT /harvesting_records/1.json
  def update
    respond_to do |format|
      if @harvesting_record.update(harvesting_record_params)
        format.html { redirect_to @harvesting_record, notice: 'Harvesting record was successfully updated.' }
        format.json { render :show, status: :ok, location: @harvesting_record }
      else
        format.html { render :edit }
        format.json { render json: @harvesting_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harvesting_records/1
  # DELETE /harvesting_records/1.json
  def destroy
    @harvesting_record.destroy
    respond_to do |format|
      format.html { redirect_to harvesting_records_url, notice: 'Harvesting record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvesting_record
      @harvesting_record = HarvestingRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harvesting_record_params
       params[:harvesting_record].permit(:active_plant_id, :date_harvested, :count_harvested, :weight_type_id)
    end
end
