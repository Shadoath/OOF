require 'test_helper'

class ActivePlantsControllerTest < ActionController::TestCase
  setup do
    @active_plant = active_plants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:active_plants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create active_plant" do
    assert_difference('ActivePlant.count') do
      post :create, active_plant: { comment: @active_plant.comment, count_active: @active_plant.count_active, count_harvested: @active_plant.count_harvested, location_id: @active_plant.location_id, plant_id: @active_plant.plant_id, soil_id: @active_plant.soil_id, status_id: @active_plant.status_id }
    end

    assert_redirected_to active_plant_path(assigns(:active_plant))
  end

  test "should show active_plant" do
    get :show, id: @active_plant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @active_plant
    assert_response :success
  end

  test "should update active_plant" do
    patch :update, id: @active_plant, active_plant: { comment: @active_plant.comment, count_active: @active_plant.count_active, count_harvested: @active_plant.count_harvested, location_id: @active_plant.location_id, plant_id: @active_plant.plant_id, soil_id: @active_plant.soil_id, status_id: @active_plant.status_id }
    assert_redirected_to active_plant_path(assigns(:active_plant))
  end

  test "should destroy active_plant" do
    assert_difference('ActivePlant.count', -1) do
      delete :destroy, id: @active_plant
    end

    assert_redirected_to active_plants_path
  end
end
