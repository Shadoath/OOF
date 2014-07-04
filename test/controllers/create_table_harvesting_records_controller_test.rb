require 'test_helper'

class CreateTableHarvestingRecordsControllerTest < ActionController::TestCase
  setup do
    @create_table_harvesting_record = create_table_harvesting_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_table_harvesting_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_table_harvesting_record" do
    assert_difference('CreateTableHarvestingRecord.count') do
      post :create, create_table_harvesting_record: {  }
    end

    assert_redirected_to create_table_harvesting_record_path(assigns(:create_table_harvesting_record))
  end

  test "should show create_table_harvesting_record" do
    get :show, id: @create_table_harvesting_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_table_harvesting_record
    assert_response :success
  end

  test "should update create_table_harvesting_record" do
    patch :update, id: @create_table_harvesting_record, create_table_harvesting_record: {  }
    assert_redirected_to create_table_harvesting_record_path(assigns(:create_table_harvesting_record))
  end

  test "should destroy create_table_harvesting_record" do
    assert_difference('CreateTableHarvestingRecord.count', -1) do
      delete :destroy, id: @create_table_harvesting_record
    end

    assert_redirected_to create_table_harvesting_records_path
  end
end
