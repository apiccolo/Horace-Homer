require 'test_helper'

class HomersControllerTest < ActionController::TestCase
  setup do
    @homer = homers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homer" do
    assert_difference('Homer.count') do
      post :create, homer: { book: @homer.book, epic: @homer.epic, line: @homer.line, obs: @homer.obs }
    end

    assert_redirected_to homer_path(assigns(:homer))
  end

  test "should show homer" do
    get :show, id: @homer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homer
    assert_response :success
  end

  test "should update homer" do
    put :update, id: @homer, homer: { book: @homer.book, epic: @homer.epic, line: @homer.line, obs: @homer.obs }
    assert_redirected_to homer_path(assigns(:homer))
  end

  test "should destroy homer" do
    assert_difference('Homer.count', -1) do
      delete :destroy, id: @homer
    end

    assert_redirected_to homers_path
  end
end
