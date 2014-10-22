class OffencecausesController < ApplicationController
  before_action :set_offencecause, only: [:show, :edit, :update, :destroy]

  # GET /offencecauses
  # GET /offencecauses.json
  def index
    @offencecauses = Offencecause.all
  end

  # GET /offencecauses/1
  # GET /offencecauses/1.json
  def show
  end

  # GET /offencecauses/new
  def new
    @offencecause = Offencecause.new
  end

  # GET /offencecauses/1/edit
  def edit
  end

  # POST /offencecauses
  # POST /offencecauses.json
  def create
    @offencecause = Offencecause.new(offencecause_params)

    respond_to do |format|
      if @offencecause.save
        format.html { redirect_to @offencecause, notice: 'Offencecause was successfully created.' }
        format.json { render :show, status: :created, location: @offencecause }
      else
        format.html { render :new }
        format.json { render json: @offencecause.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offencecauses/1
  # PATCH/PUT /offencecauses/1.json
  def update
    respond_to do |format|
      if @offencecause.update(offencecause_params)
        format.html { redirect_to @offencecause, notice: 'Offencecause was successfully updated.' }
        format.json { render :show, status: :ok, location: @offencecause }
      else
        format.html { render :edit }
        format.json { render json: @offencecause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offencecauses/1
  # DELETE /offencecauses/1.json
  def destroy
    @offencecause.destroy
    respond_to do |format|
      format.html { redirect_to offencecauses_url, notice: 'Offencecause was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offencecause
      @offencecause = Offencecause.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offencecause_params
      params.require(:offencecause).permit(:offence_id, :permit_id, :permitofficer_id, :openning_date, :closing_date)
    end
end
