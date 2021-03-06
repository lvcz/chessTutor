class AulasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_aula, only: [:show, :edit, :update, :destroy]

  # GET /aulas
  # GET /aulas.json
  def index
    @aulas = Aula.all
  end

  # GET /aulas/1
  # GET /aulas/1.json
  def show
    gon.marks = @aula.marks.all
    gon.moves = @aula.moves.all
  end

  # GET /aulas/new
  def new
    @aula = Aula.new
    @aula.autor = current_user.nome
    @aula.marks.build
    @aula.moves.build
  end

  # GET /aulas/1/edit
  def edit
    @aula.marks.build
    @aula.moves.build
  end

  # POST /aulas
  # POST /aulas.json
  def create
    @aula = Aula.new(aula_params)

    respond_to do |format|
      if @aula.save
        format.html { redirect_to @aula, notice: 'Aula criada com sucesso.' }
        format.json { render :show, status: :created, location: @aula }
      else
        format.html { render :new }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aulas/1
  # PATCH/PUT /aulas/1.json
  def update
    respond_to do |format|
      if @aula.update(aula_params)
        format.html { redirect_to @aula, notice: 'Aula atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @aula }
      else
        format.html { render :edit }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aulas/1
  # DELETE /aulas/1.json
  def destroy
    @aula.destroy
    respond_to do |format|
      format.html { redirect_to aulas_url, notice: 'Aula apagada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aula
      @aula = Aula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aula_params
      params.require(:aula).permit(:nome, :conteudo, :fen,:autor,:jogador ,marks_attributes: Mark.attribute_names.map(&:to_sym).push(:_destroy),moves_attributes: Move.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
