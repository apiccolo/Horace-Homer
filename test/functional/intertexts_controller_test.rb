require 'test_helper'

class IntertextsControllerTest < ActionController::TestCase
  setup do
    @intertext = intertexts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intertexts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intertext" do
    assert_difference('Intertext.count') do
      post :create, intertext: { obs: @intertext.obs, source: @intertext.source }
    end

    assert_redirected_to intertext_path(assigns(:intertext))
  end

  test "should show intertext" do
    get :show, id: @intertext
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intertext
    assert_response :success
  end

  test "should update intertext" do
    put :update, id: @intertext, intertext: { obs: @intertext.obs, source: @intertext.source }
    assert_redirected_to intertext_path(assigns(:intertext))
  end

  test "should destroy intertext" do
    assert_difference('Intertext.count', -1) do
      delete :destroy, id: @intertext
    end

    assert_redirected_to intertexts_path
  end
end
