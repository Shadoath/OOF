require 'test_helper'

class HarvestTypesControllerTest < ActionController::TestCase
  setup do
    @harvest_type = harvest_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:harvest_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create harvest_type" do
    assert_difference('HarvestType.count') do
      post :create, harvest_type: { name: @harvest_type.name }
    end

    assert_redirected_to harvest_type_path(assigns(:harvest_type))
  end

  test "should show harvest_type" do
    get :show, id: @harvest_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @harvest_type
    assert_response :success
  end

  test "should update harvest_type" do
    patch :update, id: @harvest_type, harvest_type: { name: @harvest_type.name }
    assert_redirected_to harvest_type_path(assigns(:harvest_type))
  end

  test "should destroy harvest_type" do
    assert_difference('HarvestType.count', -1) do
      delete :destroy, id: @harvest_type
    end

    assert_redirected_to harvest_types_path
  end
end
