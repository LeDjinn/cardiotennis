require "application_system_test_case"

class ProgramsTest < ApplicationSystemTestCase
  setup do
    @program = programs(:one)
  end

  test "visiting the index" do
    visit programs_url
    assert_selector "h1", text: "Programs"
  end

  test "creating a Program" do
    visit programs_url
    click_on "New Program"

    fill_in "Description", with: @program.description
    fill_in "Exercice1", with: @program.exercice1
    fill_in "Exercice2", with: @program.exercice2
    fill_in "Exerciceobj", with: @program.exerciceobj
    fill_in "Num", with: @program.num
    fill_in "Objectif", with: @program.objectif
    fill_in "Themeg", with: @program.themeg
    fill_in "Week", with: @program.week
    click_on "Create Program"

    assert_text "Program was successfully created"
    click_on "Back"
  end

  test "updating a Program" do
    visit programs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @program.description
    fill_in "Exercice1", with: @program.exercice1
    fill_in "Exercice2", with: @program.exercice2
    fill_in "Exerciceobj", with: @program.exerciceobj
    fill_in "Num", with: @program.num
    fill_in "Objectif", with: @program.objectif
    fill_in "Themeg", with: @program.themeg
    fill_in "Week", with: @program.week
    click_on "Update Program"

    assert_text "Program was successfully updated"
    click_on "Back"
  end

  test "destroying a Program" do
    visit programs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Program was successfully destroyed"
  end
end
