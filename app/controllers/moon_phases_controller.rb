class MoonPhasesController < ApplicationController
  before_action :set_moon_phase, only: [:show, :edit, :update, :destroy]

  # GET /moon_phases
  # GET /moon_phases.json
  def index
    @moon_phases = MoonPhase.all
  end

  # GET /moon_phases/1
  # GET /moon_phases/1.json
  def show
  end

  # GET /moon_phases/new
  def new
    @moon_phase = MoonPhase.new
  end

  # GET /moon_phases/1/edit
  def edit
  end

  # POST /moon_phases
  # POST /moon_phases.json
  def create
    @moon_phase = MoonPhase.new(moon_phase_params)

    respond_to do |format|
      if @moon_phase.save
        format.html { redirect_to @moon_phase, notice: 'Moon phase was successfully created.' }
        format.json { render :show, status: :created, location: @moon_phase }
      else
        format.html { render :new }
        format.json { render json: @moon_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moon_phases/1
  # PATCH/PUT /moon_phases/1.json
  def update
    respond_to do |format|
      if @moon_phase.update(moon_phase_params)
        format.html { redirect_to @moon_phase, notice: 'Moon phase was successfully updated.' }
        format.json { render :show, status: :ok, location: @moon_phase }
      else
        format.html { render :edit }
        format.json { render json: @moon_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moon_phases/1
  # DELETE /moon_phases/1.json
  def destroy
    @moon_phase.destroy
    respond_to do |format|
      format.html { redirect_to moon_phases_url, notice: 'Moon phase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moon_phase
      @moon_phase = MoonPhase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moon_phase_params
      params.require(:moon_phase).permit(:name, :image)
    end
end
