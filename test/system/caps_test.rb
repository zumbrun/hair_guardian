require "application_system_test_case"

class CapsTest < ApplicationSystemTestCase
  setup do
    @cap = caps(:one)
  end

  test "visiting the index" do
    visit caps_url
    assert_selector "h1", text: "Caps"
  end

  test "creating a Cap" do
    visit caps_url
    click_on "New Cap"

    fill_in "Circumference", with: @cap.circumference
    fill_in "Ear ear base", with: @cap.ear_ear_base
    fill_in "Ear ear top", with: @cap.ear_ear_top
    fill_in "Nose nape", with: @cap.nose_nape
    fill_in "Serial number", with: @cap.serial_number
    click_on "Create Cap"

    assert_text "Cap was successfully created"
    click_on "Back"
  end

  test "updating a Cap" do
    visit caps_url
    click_on "Edit", match: :first

    fill_in "Circumference", with: @cap.circumference
    fill_in "Ear ear base", with: @cap.ear_ear_base
    fill_in "Ear ear top", with: @cap.ear_ear_top
    fill_in "Nose nape", with: @cap.nose_nape
    fill_in "Serial number", with: @cap.serial_number
    click_on "Update Cap"

    assert_text "Cap was successfully updated"
    click_on "Back"
  end

  test "destroying a Cap" do
    visit caps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cap was successfully destroyed"
  end
end
