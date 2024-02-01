require "application_system_test_case"

class InteligenciaArtificialsTest < ApplicationSystemTestCase
  setup do
    @inteligencia_artificial = inteligencia_artificials(:one)
  end

  test "visiting the index" do
    visit inteligencia_artificials_url
    assert_selector "h1", text: "Inteligencia artificials"
  end

  test "should create inteligencia artificial" do
    visit inteligencia_artificials_url
    click_on "New inteligencia artificial"

    fill_in "Avaliacao media", with: @inteligencia_artificial.avaliacao_media
    fill_in "Categoria", with: @inteligencia_artificial.categoria
    fill_in "Contagem avaliacoes", with: @inteligencia_artificial.contagem_avaliacoes
    fill_in "Data criacao", with: @inteligencia_artificial.data_criacao
    fill_in "Descricao", with: @inteligencia_artificial.descricao
    fill_in "Desenvolvedor", with: @inteligencia_artificial.desenvolvedor
    fill_in "Nome", with: @inteligencia_artificial.nome
    fill_in "Tecnologia", with: @inteligencia_artificial.tecnologia
    fill_in "Url documentacao", with: @inteligencia_artificial.url_documentacao
    fill_in "Url image", with: @inteligencia_artificial.url_image
    fill_in "Url repositorio", with: @inteligencia_artificial.url_repositorio
    click_on "Create Inteligencia artificial"

    assert_text "Inteligencia artificial was successfully created"
    click_on "Back"
  end

  test "should update Inteligencia artificial" do
    visit inteligencia_artificial_url(@inteligencia_artificial)
    click_on "Edit this inteligencia artificial", match: :first

    fill_in "Avaliacao media", with: @inteligencia_artificial.avaliacao_media
    fill_in "Categoria", with: @inteligencia_artificial.categoria
    fill_in "Contagem avaliacoes", with: @inteligencia_artificial.contagem_avaliacoes
    fill_in "Data criacao", with: @inteligencia_artificial.data_criacao
    fill_in "Descricao", with: @inteligencia_artificial.descricao
    fill_in "Desenvolvedor", with: @inteligencia_artificial.desenvolvedor
    fill_in "Nome", with: @inteligencia_artificial.nome
    fill_in "Tecnologia", with: @inteligencia_artificial.tecnologia
    fill_in "Url documentacao", with: @inteligencia_artificial.url_documentacao
    fill_in "Url image", with: @inteligencia_artificial.url_image
    fill_in "Url repositorio", with: @inteligencia_artificial.url_repositorio
    click_on "Update Inteligencia artificial"

    assert_text "Inteligencia artificial was successfully updated"
    click_on "Back"
  end

  test "should destroy Inteligencia artificial" do
    visit inteligencia_artificial_url(@inteligencia_artificial)
    click_on "Destroy this inteligencia artificial", match: :first

    assert_text "Inteligencia artificial was successfully destroyed"
  end
end
