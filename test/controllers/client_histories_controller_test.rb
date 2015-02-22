require 'test_helper'

class ClientHistoriesControllerTest < ActionController::TestCase
  setup do
    @client_history = client_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_history" do
    assert_difference('ClientHistory.count') do
      post :create, client_history: { email: @client_history.email, mobile_no: @client_history.mobile_no, name: @client_history.name, painting_id: @client_history.painting_id, payment_status: @client_history.payment_status }
    end

    assert_redirected_to client_history_path(assigns(:client_history))
  end

  test "should show client_history" do
    get :show, id: @client_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_history
    assert_response :success
  end

  test "should update client_history" do
    patch :update, id: @client_history, client_history: { email: @client_history.email, mobile_no: @client_history.mobile_no, name: @client_history.name, painting_id: @client_history.painting_id, payment_status: @client_history.payment_status }
    assert_redirected_to client_history_path(assigns(:client_history))
  end

  test "should destroy client_history" do
    assert_difference('ClientHistory.count', -1) do
      delete :destroy, id: @client_history
    end

    assert_redirected_to client_histories_path
  end
end
