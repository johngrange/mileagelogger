require 'test_helper'

class MileageEntriesControllerTest < ActionController::TestCase
  setup do
    @mileage_entry = mileage_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mileage_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mileage_entry" do
    assert_difference('MileageEntry.count') do
      post :create, mileage_entry: @mileage_entry.attributes
    end

    assert_redirected_to mileage_entry_path(assigns(:mileage_entry))
  end

  test "should show mileage_entry" do
    get :show, id: @mileage_entry.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mileage_entry.to_param
    assert_response :success
  end

  test "should update mileage_entry" do
    put :update, id: @mileage_entry.to_param, mileage_entry: @mileage_entry.attributes
    assert_redirected_to mileage_entry_path(assigns(:mileage_entry))
  end

  test "should destroy mileage_entry" do
    assert_difference('MileageEntry.count', -1) do
      delete :destroy, id: @mileage_entry.to_param
    end

    assert_redirected_to mileage_entries_path
  end
end
