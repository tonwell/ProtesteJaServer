class ProtestosController < ApplicationController
  before_action :set_protesto, only: [:show, :edit, :update, :destroy]

  # GET /protestos
  # GET /protestos.json
  def index
    @protestos = Protesto.all
  end

  # GET /protestos/1
  # GET /protestos/1.json
  def show
  end

  # GET /protestos/new
  def new
    @protesto = Protesto.new
  end

  # GET /protestos/1/edit
  def edit
  end

  # POST /protestos
  # POST /protestos.json
  def create
    @protesto = Protesto.new(protesto_params)

    respond_to do |format|
      if @protesto.save
        format.html { redirect_to @protesto, notice: 'Protesto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @protesto }
      else
        format.html { render action: 'new' }
        format.json { render json: @protesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /protestos/1
  # PATCH/PUT /protestos/1.json
  def update
    respond_to do |format|
      if @protesto.update(protesto_params)
        format.html { redirect_to @protesto, notice: 'Protesto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @protesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /protestos/1
  # DELETE /protestos/1.json
  def destroy
    @protesto.destroy
    respond_to do |format|
      format.html { redirect_to protestos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_protesto
      @protesto = Protesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def protesto_params
      params.require(:protesto).permit(:pessoa, :descricao)
    end
end
