class ActivePlantRecordsController < ApplicationController
  before_action :set_active_plant_record, only: [:show, :edit, :update, :destroy]

  # GET /active_plant_records
  # GET /active_plant_records.json
  def index
    @active_plant_records = ActivePlantRecord.all
  end

  # GET /active_plant_records/1
  # GET /active_plant_records/1.json
  def show
  end

  # GET /active_plant_records/new
  def new
     puts "AP record params =  #{params}"+ params.to_s
    @selectedActivePlantID = params[:format]
    @active_plant_record = ActivePlantRecord.new
  end

  # GET /active_plant_records/1/edit
  def edit
  end

  # POST /active_plant_records
  # POST /active_plant_records.json
  def create
     puts "params = "+params.inspect
     puts "active_plant_record_params = "+active_plant_record_params.inspect
    @active_plant_record = ActivePlantRecord.new(active_plant_record_params)
    respond_to do |format|
      if @active_plant_record.save
        format.html { redirect_to @active_plant_record, notice: 'ActivePlant record was successfully created.' }
        format.json { render :show, status: :created, location: @active_plant_record }
      else
        format.html { render :new }
        format.json { render json: @active_plant_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /active_plant_records/1
  # PATCH/PUT /active_plant_records/1.json
  def update
    respond_to do |format|
      if @active_plant_record.update(active_plant_record_params)
        format.html { redirect_to @active_plant_record, notice: 'ActivePlant record was successfully updated.' }
        format.json { render :show, status: :ok, location: @active_plant_record }
      else
        format.html { render :edit }
        format.json { render json: @active_plant_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /active_plant_records/1
  # DELETE /active_plant_records/1.json
  def destroy
    @active_plant_record.destroy
    respond_to do |format|
      format.html { redirect_to active_plant_records_url, notice: 'ActivePlant record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_plant_record
      @active_plant_record = ActivePlantRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def active_plant_record_params
       params[:active_plant_record].permit(:active_plant_id, :date_processed, :count_active, :plant_status_id, :nutrients_added, :comment)
    end
end
