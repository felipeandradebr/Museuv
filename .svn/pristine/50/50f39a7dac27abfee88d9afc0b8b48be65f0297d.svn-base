require 'test_helper'

class ExemplaresControllerTest < ActionController::TestCase
  setup do
    @exemplare = exemplares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exemplares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exemplare" do
    assert_difference('Exemplare.count') do
      post :create, exemplare: { biografia: @exemplare.biografia, clase_id: @exemplare.clase_id, codigo_de_identificacao: @exemplare.codigo_de_identificacao, data_da_chegada: @exemplare.data_da_chegada, data_de_coleta: @exemplare.data_de_coleta, espec_id: @exemplare.espec_id, familia_id: @exemplare.familia_id, genero_id: @exemplare.genero_id, identificador: @exemplare.identificador, local_de_origem: @exemplare.local_de_origem, localizacao_do_acervo: @exemplare.localizacao_do_acervo, localizacao_geografica: @exemplare.localizacao_geografica, nome_cientifico: @exemplare.nome_cientifico, nome_vulgar: @exemplare.nome_vulgar, ordem_id: @exemplare.ordem_id, status: @exemplare.status }
    end

    assert_redirected_to exemplare_path(assigns(:exemplare))
  end

  test "should show exemplare" do
    get :show, id: @exemplare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exemplare
    assert_response :success
  end

  test "should update exemplare" do
    put :update, id: @exemplare, exemplare: { biografia: @exemplare.biografia, clase_id: @exemplare.clase_id, codigo_de_identificacao: @exemplare.codigo_de_identificacao, data_da_chegada: @exemplare.data_da_chegada, data_de_coleta: @exemplare.data_de_coleta, espec_id: @exemplare.espec_id, familia_id: @exemplare.familia_id, genero_id: @exemplare.genero_id, identificador: @exemplare.identificador, local_de_origem: @exemplare.local_de_origem, localizacao_do_acervo: @exemplare.localizacao_do_acervo, localizacao_geografica: @exemplare.localizacao_geografica, nome_cientifico: @exemplare.nome_cientifico, nome_vulgar: @exemplare.nome_vulgar, ordem_id: @exemplare.ordem_id, status: @exemplare.status }
    assert_redirected_to exemplare_path(assigns(:exemplare))
  end

  test "should destroy exemplare" do
    assert_difference('Exemplare.count', -1) do
      delete :destroy, id: @exemplare
    end

    assert_redirected_to exemplares_path
  end
end
