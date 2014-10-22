class VehiclemanagersController < ApplicationController
  before_action :set_vehiclemanager, only: [:show, :edit, :update, :destroy]

  # GET /vehiclemanagers
  # GET /vehiclemanagers.json
  def index
    @vehiclemanagers = Vehiclemanager.all
  end

  # GET /vehiclemanagers/1
  # GET /vehiclemanagers/1.json
  def show
  end

  # GET /vehiclemanagers/new
  def new
    @vehiclemanager = Vehiclemanager.new
  end

  # GET /vehiclemanagers/1/edit
  def edit
  end

  # POST /vehiclemanagers
  # POST /vehiclemanagers.json
  def create
    @vehiclemanager = Vehiclemanager.new(vehiclemanager_params)

    respond_to do |format|
      if @vehiclemanager.save
        format.html { redirect_to @vehiclemanager, notice: 'Vehiclemanager was successfully created.' }
        format.json { render :show, status: :created, location: @vehiclemanager }
      else
        format.html { render :new }
        format.json { render json: @vehiclemanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehiclemanagers/1
  # PATCH/PUT /vehiclemanagers/1.json
  def update
    respond_to do |format|
      if @vehiclemanager.update(vehiclemanager_params)
        format.html { redirect_to @vehiclemanager, notice: 'Vehiclemanager was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehiclemanager }
      else
        format.html { render :edit }
        format.json { render json: @vehiclemanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehiclemanagers/1
  # DELETE /vehiclemanagers/1.json
  def destroy
    @vehiclemanager.destroy
    respond_to do |format|
      format.html { redirect_to vehiclemanagers_url, notice: 'Vehiclemanager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehiclemanager
      @vehiclemanager = Vehiclemanager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehiclemanager_params
      params.require(:vehiclemanager).permit(:firstname, :lastname, :middlename, :username, :hashed_password, :salt, :national_id_no, :role_id)
    end
end
