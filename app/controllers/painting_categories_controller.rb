class PaintingCategoriesController < ApplicationController
  before_action :set_painting_category, only: [:show, :edit, :update, :destroy]

  # GET /painting_categories
  # GET /painting_categories.json
  def index
    @painting_categories = PaintingCategory.all
  end

  # GET /painting_categories/1
  # GET /painting_categories/1.json
  def show
  end

  # GET /painting_categories/new
  def new
    @painting_category = PaintingCategory.new
  end

  # GET /painting_categories/1/edit
  def edit
  end

  # POST /painting_categories
  # POST /painting_categories.json
  def create
    @painting_category = PaintingCategory.new(painting_category_params)

    respond_to do |format|
      if @painting_category.save
        format.html { redirect_to @painting_category, notice: 'Painting category was successfully created.' }
        format.json { render :show, status: :created, location: @painting_category }
      else
        format.html { render :new }
        format.json { render json: @painting_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /painting_categories/1
  # PATCH/PUT /painting_categories/1.json
  def update
    respond_to do |format|
      if @painting_category.update(painting_category_params)
        format.html { redirect_to @painting_category, notice: 'Painting category was successfully updated.' }
        format.json { render :show, status: :ok, location: @painting_category }
      else
        format.html { render :edit }
        format.json { render json: @painting_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /painting_categories/1
  # DELETE /painting_categories/1.json
  def destroy
    @painting_category.destroy
    respond_to do |format|
      format.html { redirect_to painting_categories_url, notice: 'Painting category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painting_category
      @painting_category = PaintingCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def painting_category_params
      params.require(:painting_category).permit(:name, :code)
    end
end
