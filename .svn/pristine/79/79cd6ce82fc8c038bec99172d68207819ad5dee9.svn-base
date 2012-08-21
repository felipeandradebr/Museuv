require 'test_helper'

class ClassesControllerTest < ActionController::TestCase
  setup do
    @class = classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class" do
    assert_difference('Classe.count') do
      post :create, class: { descricao: @class.descricao, status: @class.status }
    end

    assert_redirected_to class_path(assigns(:class))
  end

  test "should show class" do
    get :show, id: @class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class
    assert_response :success
  end

  test "should update class" do
    put :update, id: @class, class: { descricao: @class.descricao, status: @class.status }
    assert_redirected_to class_path(assigns(:class))
  end

  test "should destroy class" do
    assert_difference('Classe.count', -1) do
      delete :destroy, id: @class
    end

    assert_redirected_to classes_path
  end
end
