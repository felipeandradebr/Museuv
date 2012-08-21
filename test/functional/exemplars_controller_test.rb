require 'test_helper'

class ExemplarsControllerTest < ActionController::TestCase
  setup do
    @exemplar = exemplars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exemplars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exemplar" do
    assert_difference('Exemplar.count') do
      post :create, exemplar: { biografia: @exemplar.biografia, codigo_identificacao: @exemplar.codigo_identificacao, data_chegada: @exemplar.data_chegada, data_coleta: @exemplar.data_coleta, foto_costas: @exemplar.foto_costas, foto_dorso: @exemplar.foto_dorso, identificador: @exemplar.identificador, local_origem: @exemplar.local_origem, localizacao_exemplar: @exemplar.localizacao_exemplar, localizacao_geografica: @exemplar.localizacao_geografica, nome_cientifico: @exemplar.nome_cientifico, nome_vulgar: @exemplar.nome_vulgar, status: @exemplar.status }
    end

    assert_redirected_to exemplar_path(assigns(:exemplar))
  end

  test "should show exemplar" do
    get :show, id: @exemplar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exemplar
    assert_response :success
  end

  test "should update exemplar" do
    put :update, id: @exemplar, exemplar: { biografia: @exemplar.biografia, codigo_identificacao: @exemplar.codigo_identificacao, data_chegada: @exemplar.data_chegada, data_coleta: @exemplar.data_coleta, foto_costas: @exemplar.foto_costas, foto_dorso: @exemplar.foto_dorso, identificador: @exemplar.identificador, local_origem: @exemplar.local_origem, localizacao_exemplar: @exemplar.localizacao_exemplar, localizacao_geografica: @exemplar.localizacao_geografica, nome_cientifico: @exemplar.nome_cientifico, nome_vulgar: @exemplar.nome_vulgar, status: @exemplar.status }
    assert_redirected_to exemplar_path(assigns(:exemplar))
  end

  test "should destroy exemplar" do
    assert_difference('Exemplar.count', -1) do
      delete :destroy, id: @exemplar
    end

    assert_redirected_to exemplars_path
  end
end
