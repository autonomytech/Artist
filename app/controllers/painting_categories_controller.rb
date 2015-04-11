class PaintingCategoriesController < ApplicationController
  before_action :set_painting_category, only: [:show, :edit, :update, :destroy]
  before_action :painting_category_list
  # GET /painting_categories
  # GET /painting_categories.json
  def index
  end

  # GET /painting_categories/1
  # GET /painting_categories/1.json
  def show
  end

  # GET /painting_categories/new
  def new
    @painting_category ||= PaintingCategory.new
  end

  # GET /painting_categories/1/edit
  def edit
  end

  # POST /painting_categories
  # POST /painting_categories.json
  def create
    @painting_category = PaintingCategory.new(painting_category_params)
    @painting_category.save
  end

  # PATCH/PUT /painting_categories/1
  # PATCH/PUT /painting_categories/1.json
  def update
    @painting_category.update(painting_category_params)
  end

  # DELETE /painting_categories/1
  # DELETE /painting_categories/1.json
  def destroy
    @painting_category.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def painting_category_list
    @painting_categories ||= PaintingCategory.order(created_at: :desc)
  end

  def set_painting_category
    @painting_category ||= PaintingCategory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def painting_category_params
    params.require(:painting_category).permit(:name)
  end
end
