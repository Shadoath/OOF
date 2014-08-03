class DailyRecordsController < ApplicationController
   before_action :set_daily_records, only: [:show, :edit, :update, :destroy]

  # GET /daily_data
  # GET /daily_data.json
  def index
    @daily_records = DailyRecord.all
  end

  # GET /daily_data/1
  # GET /daily_data/1.json
  def show
  end

  # GET /daily_data/new
  def new
    @daily_record = DailyRecord.new
  end

  # GET /daily_data/1/edit
  def edit
  end

  # POST /daily_data
  # POST /daily_data.json
  def create
     @daily_record = DailyRecord.new(daily_record_params)

    respond_to do |format|
      if @daily_record.save
        format.html { redirect_to @daily_record, notice: 'Daily  was successfully created.' }
        format.json { render :show, status: :created, location: @daily_record }
      else
        format.html { render :new }
        format.json { render json: @daily_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_data/1
  # PATCH/PUT /daily_data/1.json
  def update
    respond_to do |format|
       if @daily_record.update(daily_record_params)
        format.html { redirect_to @daily_record, notice: 'Daily record was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_record }
      else
        format.html { render :edit }
        format.json { render json: @daily_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_data/1
  # DELETE /daily_data/1.json
  def destroy
    @daily_record.destroy
    respond_to do |format|
       format.html { redirect_to daily_data_url, notice: 'Daily record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_records
      @daily_record = DailyRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_record_params
      params.require(:daily_record).permit(:daily_date, :temp_low, :temp_high, :eggs_collected, :total_ducks, :hours_of_daylight, :sunrise, :moon_phase_id, :moon_percent, :weather, :rained, :precipitation)
    end
end
