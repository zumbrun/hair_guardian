require 'test_helper'

class DataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datum = data(:one)
  end

  test "should get index" do
    get data_url
    assert_response :success
  end

  test "should get new" do
    get new_datum_url
    assert_response :success
  end

  test "should create datum" do
    assert_difference('Datum.count') do
      post data_url, params: { datum: { battery_power: @datum.battery_power, flow_rate: @datum.flow_rate, rail_power: @datum.rail_power, temp1: @datum.temp1, temp2: @datum.temp2, temp3: @datum.temp3, temp4: @datum.temp4 } }
    end

    assert_redirected_to datum_url(Datum.last)
  end

  test "should show datum" do
    get datum_url(@datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_datum_url(@datum)
    assert_response :success
  end

  test "should update datum" do
    patch datum_url(@datum), params: { datum: { battery_power: @datum.battery_power, flow_rate: @datum.flow_rate, rail_power: @datum.rail_power, temp1: @datum.temp1, temp2: @datum.temp2, temp3: @datum.temp3, temp4: @datum.temp4 } }
    assert_redirected_to datum_url(@datum)
  end

  test "should destroy datum" do
    assert_difference('Datum.count', -1) do
      delete datum_url(@datum)
    end

    assert_redirected_to data_url
  end
end
