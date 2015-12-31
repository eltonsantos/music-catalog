class DiscosController < ApplicationController
  before_action :set_disco, only: [:show, :edit, :update, :destroy, :interesse, :enviarmail]

  # GET /discos
  # GET /discos.json
  def index
    @discos = Disco.all
  end

  # GET /discos/1
  # GET /discos/1.json
  def show
  end

  def interesse  
  end

  def enviarmail
    # Recebendo valores do formulário do modal
    name = params[:name]
    email = params[:email]
    # Método para enviar email responsável por passar os parâmetros nome do disco, nome e email para a view
    EnviarEmail.send_mail(@disco, name, email).deliver_now
    respond_to do |format|
      format.html {render action: 'show', notice: "Email enviado com sucesso!"}
      format.js
    end
  end

  # GET /discos/new
  def new
    @disco = Disco.new
  end

  # GET /discos/1/edit
  def edit
  end

  # POST /discos
  # POST /discos.json
  def create
    @disco = Disco.new(disco_params)

    respond_to do |format|
      if @disco.save
        format.html { redirect_to @disco, notice: 'Disco was successfully created.' }
        format.json { render :show, status: :created, location: @disco }
      else
        format.html { render :new }
        format.json { render json: @disco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discos/1
  # PATCH/PUT /discos/1.json
  def update
    respond_to do |format|
      if @disco.update(disco_params)
        format.html { redirect_to @disco, notice: 'Disco was successfully updated.' }
        format.json { render :show, status: :ok, location: @disco }
      else
        format.html { render :edit }
        format.json { render json: @disco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discos/1
  # DELETE /discos/1.json
  def destroy
    @disco.destroy
    respond_to do |format|
      format.html { redirect_to discos_url, notice: 'Disco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disco
      @disco = Disco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disco_params
      params.require(:disco).permit(:name, :description, :price, :year, :state, :local, :image, :categoria_id)
    end
end
