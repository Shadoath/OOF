require 'test_helper'

class PlantStatusesControllerTest < ActionController::TestCase
  setup do
    @plant_status = plant_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plant_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plant_status" do
    assert_difference('PlantStatus.count') do
      post :create, plant_status: { name: @plant_status.name }
    end

    assert_redirected_to plant_status_path(assigns(:plant_status))
  end

  test "should show plant_status" do
    get :show, id: @plant_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plant_status
    assert_response :success
  end

  test "should update plant_status" do
    patch :update, id: @plant_status, plant_status: { name: @plant_status.name }
    assert_redirected_to plant_status_path(assigns(:plant_status))
  end

  test "should destroy plant_status" do
    assert_difference('PlantStatus.count', -1) do
      delete :destroy, id: @plant_status
    end

    assert_redirected_to plant_statuses_path
  end
end
