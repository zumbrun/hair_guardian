require "application_system_test_case"

class DataTest < ApplicationSystemTestCase
  setup do
    @datum = data(:one)
  end

  test "visiting the index" do
    visit data_url
    assert_selector "h1", text: "Data"
  end

  test "creating a Datum" do
    visit data_url
    click_on "New Datum"

    fill_in "Battery power", with: @datum.battery_power
    fill_in "Flow rate", with: @datum.flow_rate
    fill_in "Rail power", with: @datum.rail_power
    fill_in "Temp1", with: @datum.temp1
    fill_in "Temp2", with: @datum.temp2
    fill_in "Temp3", with: @datum.temp3
    fill_in "Temp4", with: @datum.temp4
    click_on "Create Datum"

    assert_text "Datum was successfully created"
    click_on "Back"
  end

  test "updating a Datum" do
    visit data_url
    click_on "Edit", match: :first

    fill_in "Battery power", with: @datum.battery_power
    fill_in "Flow rate", with: @datum.flow_rate
    fill_in "Rail power", with: @datum.rail_power
    fill_in "Temp1", with: @datum.temp1
    fill_in "Temp2", with: @datum.temp2
    fill_in "Temp3", with: @datum.temp3
    fill_in "Temp4", with: @datum.temp4
    click_on "Update Datum"

    assert_text "Datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Datum" do
    visit data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datum was successfully destroyed"
  end
end
