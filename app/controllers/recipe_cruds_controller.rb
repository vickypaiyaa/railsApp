class RecipeCrudsController < ApplicationController
  before_action :set_recipe_crud, only: [:show, :edit, :update, :destroy]

  # GET /recipe_cruds
  # GET /recipe_cruds.json
  def index
    @recipe_cruds = RecipeCrud.all
  end

  # GET /recipe_cruds/1
  # GET /recipe_cruds/1.json
  def show
  end

  # GET /recipe_cruds/new
  def new
    @recipe_crud = RecipeCrud.new
  end

  # GET /recipe_cruds/1/edit
  def edit
  end

  # POST /recipe_cruds
  # POST /recipe_cruds.json
  def create
    @recipe_crud = RecipeCrud.new(recipe_crud_params)

    respond_to do |format|
      if @recipe_crud.save
        format.html { redirect_to @recipe_crud, notice: 'Recipe crud was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_crud }
      else
        format.html { render :new }
        format.json { render json: @recipe_crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_cruds/1
  # PATCH/PUT /recipe_cruds/1.json
  def update
    respond_to do |format|
      if @recipe_crud.update(recipe_crud_params)
        format.html { redirect_to @recipe_crud, notice: 'Recipe crud was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_crud }
      else
        format.html { render :edit }
        format.json { render json: @recipe_crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_cruds/1
  # DELETE /recipe_cruds/1.json
  def destroy
    @recipe_crud.destroy
    respond_to do |format|
      format.html { redirect_to recipe_cruds_url, notice: 'Recipe crud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_crud
      @recipe_crud = RecipeCrud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_crud_params
      params.fetch(:recipe_crud, {})
    end
end
