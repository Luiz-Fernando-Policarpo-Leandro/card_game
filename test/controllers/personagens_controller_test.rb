require "test_helper"

class PersonagensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personagen = personagens(:one)
  end

  test "should get index" do
    get personagens_url, as: :json
    assert_response :success
  end

  test "should create personagen" do
    assert_difference("Personagen.count") do
      post personagens_url, params: { personagen: { descricao: @personagen.descricao, especial: @personagen.especial, nome: @personagen.nome } }, as: :json
    end

    assert_response :created
  end

  test "should show personagen" do
    get personagen_url(@personagen), as: :json
    assert_response :success
  end

  test "should update personagen" do
    patch personagen_url(@personagen), params: { personagen: { descricao: @personagen.descricao, especial: @personagen.especial, nome: @personagen.nome } }, as: :json
    assert_response :success
  end

  test "should destroy personagen" do
    assert_difference("Personagen.count", -1) do
      delete personagen_url(@personagen), as: :json
    end

    assert_response :no_content
  end
end
