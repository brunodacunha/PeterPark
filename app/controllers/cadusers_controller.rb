class CadusersController < ApplicationController
  before_action :set_caduser, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /cadusers
  # GET /cadusers.json
  def index
    @cadusers = Caduser.all
  end

  # GET /cadusers/1
  # GET /cadusers/1.json
  def show
  end

  # GET /cadusers/new
  def new
    @caduser = Caduser.new
  end

  # GET /cadusers/1/edit
  def edit
  end

  # POST /cadusers
  # POST /cadusers.json
  def create
    @caduser = Caduser.new(caduser_params)

    respond_to do |format|
      if @caduser.save
        format.html { redirect_to @caduser, notice: 'Caduser Criado com sucesso.' }
        format.json { render :show, status: :created, location: @caduser }
      else
        format.html { render :new }
        format.json { render json: @caduser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadusers/1
  # PATCH/PUT /cadusers/1.json
  def update
    respond_to do |format|
      if @caduser.update(caduser_params)
        format.html { redirect_to @caduser, notice: 'Caduser Editado com Sucesso.' }
        format.json { render :show, status: :ok, location: @caduser }
      else
        format.html { render :edit }
        format.json { render json: @caduser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadusers/1
  # DELETE /cadusers/1.json
  def destroy
    @caduser.destroy
    respond_to do |format|
      format.html { redirect_to cadusers_url, notice: 'Caduser Ecluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caduser
      @caduser = Caduser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caduser_params
      params.require(:caduser).permit(:nome, :rg, :cpf, :placa, :box, :turno)
    end
end
