require 'test_helper'

class JobfunctionsControllerTest < ActionController::TestCase
  setup do
    @jobfunction = jobfunctions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobfunctions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobfunction" do
    assert_difference('Jobfunction.count') do
      post :create, jobfunction: { name: @jobfunction.name }
    end

    assert_redirected_to jobfunction_path(assigns(:jobfunction))
  end

  test "should show jobfunction" do
    get :show, id: @jobfunction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobfunction
    assert_response :success
  end

  test "should update jobfunction" do
    patch :update, id: @jobfunction, jobfunction: { name: @jobfunction.name }
    assert_redirected_to jobfunction_path(assigns(:jobfunction))
  end

  test "should destroy jobfunction" do
    assert_difference('Jobfunction.count', -1) do
      delete :destroy, id: @jobfunction
    end

    assert_redirected_to jobfunctions_path
  end
end
