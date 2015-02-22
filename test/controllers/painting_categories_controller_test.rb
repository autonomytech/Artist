require 'test_helper'

class PaintingCategoriesControllerTest < ActionController::TestCase
  setup do
    @painting_category = painting_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:painting_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create painting_category" do
    assert_difference('PaintingCategory.count') do
      post :create, painting_category: { code: @painting_category.code, name: @painting_category.name }
    end

    assert_redirected_to painting_category_path(assigns(:painting_category))
  end

  test "should show painting_category" do
    get :show, id: @painting_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @painting_category
    assert_response :success
  end

  test "should update painting_category" do
    patch :update, id: @painting_category, painting_category: { code: @painting_category.code, name: @painting_category.name }
    assert_redirected_to painting_category_path(assigns(:painting_category))
  end

  test "should destroy painting_category" do
    assert_difference('PaintingCategory.count', -1) do
      delete :destroy, id: @painting_category
    end

    assert_redirected_to painting_categories_path
  end
end
