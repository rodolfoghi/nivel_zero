require "application_system_test_case"

class NcmsTest < ApplicationSystemTestCase
  setup do
    @ncm = ncms(:one)
  end

  test "visiting the index" do
    visit ncms_url
    assert_selector "h1", text: "NCMs"
  end

  test "should create ncm" do
    visit ncms_url
    click_on "Nova NCM"

    check "Ativa" if @ncm.ativa
    fill_in "CEST", with: @ncm.cest
    fill_in "Código", with: @ncm.codigo
    fill_in "Descrição", with: @ncm.descricao
    fill_in "Exceção", with: @ncm.excecao
    click_on "Criar NCM"

    assert_text "Ncm was successfully created"
    click_on "Back"
  end

  test "should update Ncm" do
    visit ncm_url(@ncm)
    click_on "Edit this ncm", match: :first

    check "Ativa" if @ncm.ativa
    fill_in "CEST", with: @ncm.cest
    fill_in "Código", with: @ncm.codigo
    fill_in "Descrição", with: @ncm.descricao
    fill_in "Exceção", with: @ncm.excecao
    click_on "Atualizar NCM"

    assert_text "Ncm was successfully updated"
    click_on "Back"
  end

  test "should destroy Ncm" do
    visit ncm_url(@ncm)
    click_on "Destroy this ncm", match: :first

    assert_text "Ncm was successfully destroyed"
  end
end
