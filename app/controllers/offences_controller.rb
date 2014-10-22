class OffencesController < ApplicationController
  before_action :set_offence, only: [:show, :edit, :update, :destroy]

  # GET /offences
  # GET /offences.json
  def index
    @offences = Offence.all
  end

  # GET /offences/1
  # GET /offences/1.json
  def show
  end

  # GET /offences/new
  def new
    @offence = Offence.new
  end

  # GET /offences/1/edit
  def edit
  end

  # POST /offences
  # POST /offences.json
  def create
    @offence = Offence.new(offence_params)

    respond_to do |format|
      if @offence.save
        format.html { redirect_to @offence, notice: 'Offence was successfully created.' }
        format.json { render :show, status: :created, location: @offence }
      else
        format.html { render :new }
        format.json { render json: @offence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offences/1
  # PATCH/PUT /offences/1.json
  def update
    respond_to do |format|
      if @offence.update(offence_params)
        format.html { redirect_to @offence, notice: 'Offence was successfully updated.' }
        format.json { render :show, status: :ok, location: @offence }
      else
        format.html { render :edit }
        format.json { render json: @offence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offences/1
  # DELETE /offences/1.json
  def destroy
    @offence.destroy
    respond_to do |format|
      format.html { redirect_to offences_url, notice: 'Offence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offence
      @offence = Offence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offence_params
      params.require(:offence).permit(:title, :description, :charge_fee)
    end
end
