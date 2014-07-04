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
    @harvesting_record = HarvestingRecord.new
  end

  # GET /harvesting_records/1/edit
  def edit
  end

  # POST /harvesting_records
  # POST /harvesting_records.json
  def create
    @harvesting_record = HarvestingRecord.new(harvesting_record_params)

    respond_to do |format|
      if @harvesting_record.save
        format.html { redirect_to @harvesting_record, notice: 'Create table harvesting record was successfully created.' }
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
        format.html { redirect_to @harvesting_record, notice: 'Create table harvesting record was successfully updated.' }
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
      format.html { redirect_to harvesting_records_url, notice: 'Create table harvesting record was successfully destroyed.' }
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
