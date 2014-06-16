require 'test_helper'

class DailyDataControllerTest < ActionController::TestCase
  setup do
    @daily_datum = daily_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_datum" do
    assert_difference('DailyDatum.count') do
      post :create, daily_datum: { daily_date: @daily_datum.daily_date, eggs_collected: @daily_datum.eggs_collected, hours_of_daylight: @daily_datum.hours_of_daylight, moon_percent: @daily_datum.moon_percent, moon_phase_id: @daily_datum.moon_phase_id, rained: @daily_datum.rained, sunrise: @daily_datum.sunrise, temp_high: @daily_datum.temp_high, temp_low: @daily_datum.temp_low, total_ducks: @daily_datum.total_ducks, weather: @daily_datum.weather }
    end

    assert_redirected_to daily_datum_path(assigns(:daily_datum))
  end

  test "should show daily_datum" do
    get :show, id: @daily_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_datum
    assert_response :success
  end

  test "should update daily_datum" do
    patch :update, id: @daily_datum, daily_datum: { daily_date: @daily_datum.daily_date, eggs_collected: @daily_datum.eggs_collected, hours_of_daylight: @daily_datum.hours_of_daylight, moon_percent: @daily_datum.moon_percent, moon_phase_id: @daily_datum.moon_phase_id, rained: @daily_datum.rained, sunrise: @daily_datum.sunrise, temp_high: @daily_datum.temp_high, temp_low: @daily_datum.temp_low, total_ducks: @daily_datum.total_ducks, weather: @daily_datum.weather }
    assert_redirected_to daily_datum_path(assigns(:daily_datum))
  end

  test "should destroy daily_datum" do
    assert_difference('DailyDatum.count', -1) do
      delete :destroy, id: @daily_datum
    end

    assert_redirected_to daily_data_path
  end
end
