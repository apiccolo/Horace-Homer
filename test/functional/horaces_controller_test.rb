require 'test_helper'

class HoracesControllerTest < ActionController::TestCase
  setup do
    @horace = horaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:horaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create horace" do
    assert_difference('Horace.count') do
      post :create, horace: { book: @horace.book, line: @horace.line, obs: @horace.obs, ode: @horace.ode, words: @horace.words }
    end

    assert_redirected_to horace_path(assigns(:horace))
  end

  test "should show horace" do
    get :show, id: @horace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @horace
    assert_response :success
  end

  test "should update horace" do
    put :update, id: @horace, horace: { book: @horace.book, line: @horace.line, obs: @horace.obs, ode: @horace.ode, words: @horace.words }
    assert_redirected_to horace_path(assigns(:horace))
  end

  test "should destroy horace" do
    assert_difference('Horace.count', -1) do
      delete :destroy, id: @horace
    end

    assert_redirected_to horaces_path
  end
end
