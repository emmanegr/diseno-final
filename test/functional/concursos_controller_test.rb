require 'test_helper'

class ConcursosControllerTest < ActionController::TestCase
  setup do
    @concurso = concursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concurso" do
    assert_difference('Concurso.count') do
      post :create, concurso: @concurso.attributes
    end

    assert_redirected_to concurso_path(assigns(:concurso))
  end

  test "should show concurso" do
    get :show, id: @concurso.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concurso.to_param
    assert_response :success
  end

  test "should update concurso" do
    put :update, id: @concurso.to_param, concurso: @concurso.attributes
    assert_redirected_to concurso_path(assigns(:concurso))
  end

  test "should destroy concurso" do
    assert_difference('Concurso.count', -1) do
      delete :destroy, id: @concurso.to_param
    end

    assert_redirected_to concursos_path
  end
end
