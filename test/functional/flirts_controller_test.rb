require 'test_helper'

class FlirtsControllerTest < ActionController::TestCase
  setup do
    @flirt = flirts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flirts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flirt" do
    assert_difference('Flirt.count') do
      post :create, flirt: { from_user_id: @flirt.from_user_id, project_id: @flirt.project_id, to_user_id: @flirt.to_user_id }
    end

    assert_redirected_to flirt_path(assigns(:flirt))
  end

  test "should show flirt" do
    get :show, id: @flirt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flirt
    assert_response :success
  end

  test "should update flirt" do
    put :update, id: @flirt, flirt: { from_user_id: @flirt.from_user_id, project_id: @flirt.project_id, to_user_id: @flirt.to_user_id }
    assert_redirected_to flirt_path(assigns(:flirt))
  end

  test "should destroy flirt" do
    assert_difference('Flirt.count', -1) do
      delete :destroy, id: @flirt
    end

    assert_redirected_to flirts_path
  end
end
