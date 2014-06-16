require 'test_helper'

class MoonPhasesControllerTest < ActionController::TestCase
  setup do
    @moon_phase = moon_phases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moon_phases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moon_phase" do
    assert_difference('MoonPhase.count') do
      post :create, moon_phase: { image: @moon_phase.image, name: @moon_phase.name }
    end

    assert_redirected_to moon_phase_path(assigns(:moon_phase))
  end

  test "should show moon_phase" do
    get :show, id: @moon_phase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moon_phase
    assert_response :success
  end

  test "should update moon_phase" do
    patch :update, id: @moon_phase, moon_phase: { image: @moon_phase.image, name: @moon_phase.name }
    assert_redirected_to moon_phase_path(assigns(:moon_phase))
  end

  test "should destroy moon_phase" do
    assert_difference('MoonPhase.count', -1) do
      delete :destroy, id: @moon_phase
    end

    assert_redirected_to moon_phases_path
  end
end
