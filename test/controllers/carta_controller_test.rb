require "test_helper"

class CartaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cartum = carta(:one)
  end

  test "should get index" do
    get carta_url, as: :json
    assert_response :success
  end

  test "should create cartum" do
    assert_difference("Cartum.count") do
      post carta_url, params: { cartum: { dano: @cartum.dano, descricao: @cartum.descricao, efeito_id: @cartum.efeito_id, nome: @cartum.nome, tipo_id: @cartum.tipo_id, vida: @cartum.vida } }, as: :json
    end

    assert_response :created
  end

  test "should show cartum" do
    get cartum_url(@cartum), as: :json
    assert_response :success
  end

  test "should update cartum" do
    patch cartum_url(@cartum), params: { cartum: { dano: @cartum.dano, descricao: @cartum.descricao, efeito_id: @cartum.efeito_id, nome: @cartum.nome, tipo_id: @cartum.tipo_id, vida: @cartum.vida } }, as: :json
    assert_response :success
  end

  test "should destroy cartum" do
    assert_difference("Cartum.count", -1) do
      delete cartum_url(@cartum), as: :json
    end

    assert_response :no_content
  end
end
