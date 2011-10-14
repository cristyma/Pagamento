# encoding: utf-8

class FornecedoresController < ApplicationController
  
  before_filter :authenticate_usuario!, except: [:index]


  def index
    @fornecedores = Fornecedor.all

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @fornecedores }
    
  end

  # GET /fornecedores/1
  # GET /fornecedores/1.json
  # def show
  #   @fornecedor = Fornecedor.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @fornecedor }
  #   end
  # end

  # GET /fornecedores/new
  # GET /fornecedores/new.json
  def new
    @fornecedor = Fornecedor.new

    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json { render json: @fornecedor }
    
  end

  # GET /fornecedores/1/edit
  def edit
    @fornecedor = Fornecedor.find(params[:id])
  end

  # POST /fornecedores
  # POST /fornecedores.json
  def create
    @fornecedor = Fornecedor.new(params[:fornecedor])

      if @fornecedor.save
        redirect_to fornecedores_path, notice: 'Fornecedor foi cadastrado.' 
      else
        render action: "new"
      end
  end

  # PUT /fornecedores/1
  # PUT /fornecedores/1.json
  

  def update
    @fornecedor = Fornecedor.find(params[:id])
    
      if @fornecedor.update_attributes(params[:fornecedor])
        redirect_to @fornecedores_path, notice: 'Fornecedor foi atualizado.'         
      else
        render action: "edit"         
      end    
  end

  # DELETE /fornecedores/1
  # DELETE /fornecedores/1.json
  def destroy
    @fornecedor = Fornecedor.find(params[:id])
    @fornecedor.destroy
    
    redirect_to fornecedores_path, notice: 'Fornecedor excluído'
          
  end
end
