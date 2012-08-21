require 'test_helper'

class FilosControllerTest < ActionController::TestCase
  setup do
    @filo = filos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filo" do
    assert_difference('Filo.count') do
      post :create, filo: { descricao: @filo.descricao, status: @filo.status }
    end

    assert_redirected_to filo_path(assigns(:filo))
  end

  test "should show filo" do
    get :show, id: @filo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filo
    assert_response :success
  end

  test "should update filo" do
    put :update, id: @filo, filo: { descricao: @filo.descricao, status: @filo.status }
    assert_redirected_to filo_path(assigns(:filo))
  end

  test "should destroy filo" do
    assert_difference('Filo.count', -1) do
      delete :destroy, id: @filo
    end

    assert_redirected_to filos_path
  end
end
