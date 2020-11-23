require 'test_helper'

class CapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cap = caps(:one)
  end

  test "should get index" do
    get caps_url
    assert_response :success
  end

  test "should get new" do
    get new_cap_url
    assert_response :success
  end

  test "should create cap" do
    assert_difference('Cap.count') do
      post caps_url, params: { cap: { circumference: @cap.circumference, ear_ear_base: @cap.ear_ear_base, ear_ear_top: @cap.ear_ear_top, nose_nape: @cap.nose_nape, serial_number: @cap.serial_number } }
    end

    assert_redirected_to cap_url(Cap.last)
  end

  test "should show cap" do
    get cap_url(@cap)
    assert_response :success
  end

  test "should get edit" do
    get edit_cap_url(@cap)
    assert_response :success
  end

  test "should update cap" do
    patch cap_url(@cap), params: { cap: { circumference: @cap.circumference, ear_ear_base: @cap.ear_ear_base, ear_ear_top: @cap.ear_ear_top, nose_nape: @cap.nose_nape, serial_number: @cap.serial_number } }
    assert_redirected_to cap_url(@cap)
  end

  test "should destroy cap" do
    assert_difference('Cap.count', -1) do
      delete cap_url(@cap)
    end

    assert_redirected_to caps_url
  end
end
