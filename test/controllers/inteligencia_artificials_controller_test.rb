require "test_helper"

class InteligenciaArtificialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inteligencia_artificial = inteligencia_artificials(:one)
  end

  test "should get index" do
    get inteligencia_artificials_url
    assert_response :success
  end

  test "should get new" do
    get new_inteligencia_artificial_url
    assert_response :success
  end

  test "should create inteligencia_artificial" do
    assert_difference("InteligenciaArtificial.count") do
      post inteligencia_artificials_url, params: { inteligencia_artificial: { avaliacao_media: @inteligencia_artificial.avaliacao_media, categoria: @inteligencia_artificial.categoria, contagem_avaliacoes: @inteligencia_artificial.contagem_avaliacoes, data_criacao: @inteligencia_artificial.data_criacao, descricao: @inteligencia_artificial.descricao, desenvolvedor: @inteligencia_artificial.desenvolvedor, nome: @inteligencia_artificial.nome, tecnologia: @inteligencia_artificial.tecnologia, url_documentacao: @inteligencia_artificial.url_documentacao, url_image: @inteligencia_artificial.url_image, url_repositorio: @inteligencia_artificial.url_repositorio } }
    end

    assert_redirected_to inteligencia_artificial_url(InteligenciaArtificial.last)
  end

  test "should show inteligencia_artificial" do
    get inteligencia_artificial_url(@inteligencia_artificial)
    assert_response :success
  end

  test "should get edit" do
    get edit_inteligencia_artificial_url(@inteligencia_artificial)
    assert_response :success
  end

  test "should update inteligencia_artificial" do
    patch inteligencia_artificial_url(@inteligencia_artificial), params: { inteligencia_artificial: { avaliacao_media: @inteligencia_artificial.avaliacao_media, categoria: @inteligencia_artificial.categoria, contagem_avaliacoes: @inteligencia_artificial.contagem_avaliacoes, data_criacao: @inteligencia_artificial.data_criacao, descricao: @inteligencia_artificial.descricao, desenvolvedor: @inteligencia_artificial.desenvolvedor, nome: @inteligencia_artificial.nome, tecnologia: @inteligencia_artificial.tecnologia, url_documentacao: @inteligencia_artificial.url_documentacao, url_image: @inteligencia_artificial.url_image, url_repositorio: @inteligencia_artificial.url_repositorio } }
    assert_redirected_to inteligencia_artificial_url(@inteligencia_artificial)
  end

  test "should destroy inteligencia_artificial" do
    assert_difference("InteligenciaArtificial.count", -1) do
      delete inteligencia_artificial_url(@inteligencia_artificial)
    end

    assert_redirected_to inteligencia_artificials_url
  end
end
