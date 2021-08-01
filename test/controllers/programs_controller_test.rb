require "test_helper"

class ProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program = programs(:one)
  end

  test "should get index" do
    get programs_url
    assert_response :success
  end

  test "should get new" do
    get new_program_url
    assert_response :success
  end

  test "should create program" do
    assert_difference('Program.count') do
      post programs_url, params: { program: { description: @program.description, exercice1: @program.exercice1, exercice2: @program.exercice2, exerciceobj: @program.exerciceobj, num: @program.num, objectif: @program.objectif, themeg: @program.themeg, week: @program.week } }
    end

    assert_redirected_to program_url(Program.last)
  end

  test "should show program" do
    get program_url(@program)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_url(@program)
    assert_response :success
  end

  test "should update program" do
    patch program_url(@program), params: { program: { description: @program.description, exercice1: @program.exercice1, exercice2: @program.exercice2, exerciceobj: @program.exerciceobj, num: @program.num, objectif: @program.objectif, themeg: @program.themeg, week: @program.week } }
    assert_redirected_to program_url(@program)
  end

  test "should destroy program" do
    assert_difference('Program.count', -1) do
      delete program_url(@program)
    end

    assert_redirected_to programs_url
  end
end
