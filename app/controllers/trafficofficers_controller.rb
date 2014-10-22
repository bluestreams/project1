class TrafficofficersController < ApplicationController
  before_action :set_trafficofficer, only: [:show, :edit, :update, :destroy]

  # GET /trafficofficers
  # GET /trafficofficers.json
  def index
    @trafficofficers = Trafficofficer.all
  end

  # GET /trafficofficers/1
  # GET /trafficofficers/1.json
  def show
  end

  # GET /trafficofficers/new
  def new
    @trafficofficer = Trafficofficer.new
  end

  # GET /trafficofficers/1/edit
  def edit
  end

  # POST /trafficofficers
  # POST /trafficofficers.json
  def create
    @trafficofficer = Trafficofficer.new(trafficofficer_params)

    respond_to do |format|
      if @trafficofficer.save
        format.html { redirect_to @trafficofficer, notice: 'Trafficofficer was successfully created.' }
        format.json { render :show, status: :created, location: @trafficofficer }
      else
        format.html { render :new }
        format.json { render json: @trafficofficer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trafficofficers/1
  # PATCH/PUT /trafficofficers/1.json
  def update
    respond_to do |format|
      if @trafficofficer.update(trafficofficer_params)
        format.html { redirect_to @trafficofficer, notice: 'Trafficofficer was successfully updated.' }
        format.json { render :show, status: :ok, location: @trafficofficer }
      else
        format.html { render :edit }
        format.json { render json: @trafficofficer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trafficofficers/1
  # DELETE /trafficofficers/1.json
  def destroy
    @trafficofficer.destroy
    respond_to do |format|
      format.html { redirect_to trafficofficers_url, notice: 'Trafficofficer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trafficofficer
      @trafficofficer = Trafficofficer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trafficofficer_params
      params.require(:trafficofficer).permit(:firstname, :lastname, :middlename, :username, :hashed_password, :salt, :national_id_no, :role_id)
    end
end
