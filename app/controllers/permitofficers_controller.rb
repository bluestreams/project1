class PermitofficersController < ApplicationController
  before_action :set_permitofficer, only: [:show, :edit, :update, :destroy]

  # GET /permitofficers
  # GET /permitofficers.json
  def index
    @permitofficers = Permitofficer.all
  end

  # GET /permitofficers/1
  # GET /permitofficers/1.json
  def show
  end

  # GET /permitofficers/new
  def new
    @permitofficer = Permitofficer.new
  end

  # GET /permitofficers/1/edit
  def edit
  end

  # POST /permitofficers
  # POST /permitofficers.json
  def create
    @permitofficer = Permitofficer.new(permitofficer_params)

    respond_to do |format|
      if @permitofficer.save
        format.html { redirect_to @permitofficer, notice: 'Permitofficer was successfully created.' }
        format.json { render :show, status: :created, location: @permitofficer }
      else
        format.html { render :new }
        format.json { render json: @permitofficer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permitofficers/1
  # PATCH/PUT /permitofficers/1.json
  def update
    respond_to do |format|
      if @permitofficer.update(permitofficer_params)
        format.html { redirect_to @permitofficer, notice: 'Permitofficer was successfully updated.' }
        format.json { render :show, status: :ok, location: @permitofficer }
      else
        format.html { render :edit }
        format.json { render json: @permitofficer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permitofficers/1
  # DELETE /permitofficers/1.json
  def destroy
    @permitofficer.destroy
    respond_to do |format|
      format.html { redirect_to permitofficers_url, notice: 'Permitofficer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permitofficer
      @permitofficer = Permitofficer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permitofficer_params
      params.require(:permitofficer).permit(:firstname, :lastname, :middlename, :username, :hashed_password, :salt, :national_id_no, :role_id)
    end
end
