class ControleGerenciamentosController < ApplicationController
  before_action :set_controle_gerenciamento, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /controle_gerenciamentos
  # GET /controle_gerenciamentos.json
  def index
    #@controle_gerenciamentos = ControleGerenciamento.all
    @controle_gerenciamentos = ControleGerenciamento.order(created_at: :desc)
  end

  # GET /controle_gerenciamentos/1
  # GET /controle_gerenciamentos/1.json
  def show
  end

  # GET /controle_gerenciamentos/new
  def new
    @controle_gerenciamento = ControleGerenciamento.new
  end

  # GET /controle_gerenciamentos/1/edit
  def edit
  end

  # POST /controle_gerenciamentos
  # POST /controle_gerenciamentos.json
  def create
    @controle_gerenciamento = ControleGerenciamento.new(controle_gerenciamento_params)

    respond_to do |format|
      if @controle_gerenciamento.save
        format.html { redirect_to @controle_gerenciamento, notice: 'Controle gerenciamento Salvo com Sucesso.' }
        format.json { render :show, status: :created, location: @controle_gerenciamento }
      else
        format.html { render :new }
        format.json { render json: @controle_gerenciamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controle_gerenciamentos/1
  # PATCH/PUT /controle_gerenciamentos/1.json
  def update
    respond_to do |format|
      if @controle_gerenciamento.update(controle_gerenciamento_params)
        format.html { redirect_to @controle_gerenciamento, notice: 'Controle gerenciamento Editado com sucesso.' }
        format.json { render :show, status: :ok, location: @controle_gerenciamento }
      else
        format.html { render :edit }
        format.json { render json: @controle_gerenciamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controle_gerenciamentos/1
  # DELETE /controle_gerenciamentos/1.json
  def destroy
    @controle_gerenciamento.destroy
    respond_to do |format|
      format.html { redirect_to controle_gerenciamentos_url, notice: 'Controle gerenciamento Exlcuido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_controle_gerenciamento
      @controle_gerenciamento = ControleGerenciamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def controle_gerenciamento_params
      params.require(:controle_gerenciamento).permit(:valor_hora, :horaadd, :valor_diaria, :mensalista_meioturno, :mensalista_integral, :num_vagas)
    end
end
