require "test_helper"

class RegrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regra = regras(:one)
  end

  test "should get index" do
    get regras_url, as: :json
    assert_response :success
  end

  test "should create regra" do
    assert_difference("Regra.count") do
      post regras_url, params: { regra: { descricao: @regra.descricao, versao: @regra.versao } }, as: :json
    end

    assert_response :created
  end

  test "should show regra" do
    get regra_url(@regra), as: :json
    assert_response :success
  end

  test "should update regra" do
    patch regra_url(@regra), params: { regra: { descricao: @regra.descricao, versao: @regra.versao } }, as: :json
    assert_response :success
  end

  test "should destroy regra" do
    assert_difference("Regra.count", -1) do
      delete regra_url(@regra), as: :json
    end

    assert_response :no_content
  end
end
