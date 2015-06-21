class CadcarrosController < ApplicationController
  before_action :set_cadcarro, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /cadcarros
  # GET /cadcarros.json
  def index
    @cadcarros = Cadcarro.all
  end

  # GET /cadcarros/1
  # GET /cadcarros/1.json
  def show
  end

  # GET /cadcarros/new
  def new
    @cadcarro = Cadcarro.new
  end

  # GET /cadcarros/1/edit
  def edit
  end

  # POST /cadcarros
  # POST /cadcarros.json
  def create
    @cadcarro = Cadcarro.new(cadcarro_params)

    respond_to do |format|
      if @cadcarro.save
        format.html { redirect_to @cadcarro, notice: 'Cadcarro was successfully created.' }
        format.json { render :show, status: :created, location: @cadcarro }
      else
        format.html { render :new }
        format.json { render json: @cadcarro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadcarros/1
  # PATCH/PUT /cadcarros/1.json
  def update
    respond_to do |format|
      if @cadcarro.update(cadcarro_params)
        format.html { redirect_to @cadcarro, notice: 'Cadcarro was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadcarro }
      else
        format.html { render :edit }
        format.json { render json: @cadcarro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadcarros/1
  # DELETE /cadcarros/1.json
  def destroy
    @cadcarro.destroy
    respond_to do |format|
      format.html { redirect_to cadcarros_url, notice: 'Cadcarro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadcarro
      @cadcarro = Cadcarro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadcarro_params
      params.require(:cadcarro).permit(:marca, :modelo, :cor, :placa, :ano)
    end
end
