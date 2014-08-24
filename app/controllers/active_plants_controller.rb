class ActivePlantsController < ApplicationController
   before_action :set_active_plant, only: [:show, :edit, :update, :destroy]
   require 'date'
   
  # GET /active_plants
  # GET /active_plants.json
  def index
     if(!params[:sort].nil?)
        @active_plants = ActivePlant.order(params[:sort] + ' ' + params[:direction]).all
     else
        @active_plants = ActivePlant.order(:location_id, :plant_id).all
     end
  end

  # GET /active_plants/1
  # GET /active_plants/1.json
  def show
  end

  # GET /active_plants/new
  def new
   @active_plant = ActivePlant.new
  end

  # GET /active_plants/1/edit
  def edit
  end
   
     # GET /active_plants/1/edit
  def admin_edit
  end

  # POST /active_plants
  # POST /active_plants.json
   def create
      #TODO date
      puts "active_plant_params="+params.inspect
      @start_date = Date.civil(params[:range][:"start_date(1i)"].to_i,params[:range][:"start_date(2i)"].to_i,params[:range][:"start_date(3i)"].to_i)
      @active_plant = ActivePlant.new(active_plant_params)
      respond_to do |format|
      if @active_plant.save
         #Create a Planting record
         @planting = Planting.create(active_plant_id: @active_plant.id, plant_status_id: active_plant_params[:plant_status_id], location_id: @active_plant.location_id, count_planted: active_plant_params[:count_active], date_planted: @start_date, comment: @active_plant.comment)
         
         @planting.save
         format.html { redirect_to @active_plant, notice: 'Active plant was successfully created.  Planting Data saved.' }
         format.json { render :show, plant_status_id: :created, location: @active_plant }
      else
        format.html { render :new }
        format.json { render json: @active_plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /active_plants/1
  # PATCH/PUT /active_plants/1.json
  def update
     action_date = Date.civil(params[:range][:"start_date(1i)"].to_i,params[:range][:"start_date(2i)"].to_i,params[:range][:"start_date(3i)"].to_i)
       if(params[:active_plant][:nutrients_added] == "1")
          puts "$$$$.$$ got nutrients :)"
          params[:active_plant][:last_nutrient_date] = action_date
       end          
     puts "$$$$.$$ Update active_plant_params="+params.inspect

     respond_to do |format|             
     if @active_plant.update(active_plant_params)
        @planting = ActivePlantRecord.create(active_plant_id: @active_plant.id, plant_status_id: active_plant_params[:plant_status_id], count_active: active_plant_params[:count_active], date_processed: action_date, nutrients_added: params[:active_plant][:nutrients_added], comment: @active_plant.comment)

        #TODO update harvest data if needed.
        format.html { redirect_to @active_plant, notice: 'Active plant was successfully updated.' }
        format.json { render :show, status: :ok, location: @active_plant }
      else
        format.html { render :edit }
        format.json { render json: @active_plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /active_plants/1
  # DELETE /active_plants/1.json
  def destroy
    @active_plant.destroy
    respond_to do |format|
      format.html { redirect_to active_plants_url, notice: 'Active plant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def sort_column  
       ActivePlant.column_names.include?(params[:sort]) ? params[:sort] : "location_id"    
    end
   
    def set_active_plant
      @active_plant = ActivePlant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def active_plant_params
       params.require(:active_plant).permit(:plant_id, :plant_status_id, :location_id, :soil_id, :count_active, :nutrients_added, :comment)
    end
end
