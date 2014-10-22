class PermitownersController < ApplicationController
  before_action :set_permitowner, only: [:show, :edit, :update, :destroy]

  # GET /permitowners
  # GET /permitowners.json
  def index
    @permitowners = Permitowner.all
  end

  # GET /permitowners/1
  # GET /permitowners/1.json
  def show
  end

  # GET /permitowners/new
  def new
    @permitowner = Permitowner.new
  end

  # GET /permitowners/1/edit
  def edit
  end

  # POST /permitowners
  # POST /permitowners.json
  def create
    @permitowner = Permitowner.new(permitowner_params)

    respond_to do |format|
      if @permitowner.save
        format.html { redirect_to @permitowner, notice: 'Permitowner was successfully created.' }
        format.json { render :show, status: :created, location: @permitowner }
      else
        format.html { render :new }
        format.json { render json: @permitowner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permitowners/1
  # PATCH/PUT /permitowners/1.json
  def update
    respond_to do |format|
      if @permitowner.update(permitowner_params)
        format.html { redirect_to @permitowner, notice: 'Permitowner was successfully updated.' }
        format.json { render :show, status: :ok, location: @permitowner }
      else
        format.html { render :edit }
        format.json { render json: @permitowner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permitowners/1
  # DELETE /permitowners/1.json
  def destroy
    @permitowner.destroy
    respond_to do |format|
      format.html { redirect_to permitowners_url, notice: 'Permitowner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permitowner
      @permitowner = Permitowner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permitowner_params
      params.require(:permitowner).permit(:firstname, :lastname, :middlename, :citizenship, :current_address, :home_address, :passport_no, :home_phone_no, :mobile_no, :permit_id)
    end
end
