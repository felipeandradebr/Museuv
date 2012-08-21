require 'test_helper'

class EspecsControllerTest < ActionController::TestCase
  setup do
    @espec = especs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create espec" do
    assert_difference('Espec.count') do
      post :create, espec: { descricao: @espec.descricao, genero_id: @espec.genero_id, status: @espec.status }
    end

    assert_redirected_to espec_path(assigns(:espec))
  end

  test "should show espec" do
    get :show, id: @espec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @espec
    assert_response :success
  end

  test "should update espec" do
    put :update, id: @espec, espec: { descricao: @espec.descricao, genero_id: @espec.genero_id, status: @espec.status }
    assert_redirected_to espec_path(assigns(:espec))
  end

  test "should destroy espec" do
    assert_difference('Espec.count', -1) do
      delete :destroy, id: @espec
    end

    assert_redirected_to especs_path
  end
end
