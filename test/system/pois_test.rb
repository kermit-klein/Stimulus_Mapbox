require "application_system_test_case"

class PoisTest < ApplicationSystemTestCase
  setup do
    @poi = pois(:one)
  end

  test "visiting the index" do
    visit pois_url
    assert_selector "h1", text: "Pois"
  end

  test "creating a Poi" do
    visit pois_url
    click_on "New Poi"

    fill_in "Latitude", with: @poi.latitude
    fill_in "Longitude", with: @poi.longitude
    fill_in "Name", with: @poi.name
    click_on "Create Poi"

    assert_text "Poi was successfully created"
    click_on "Back"
  end

  test "updating a Poi" do
    visit pois_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @poi.latitude
    fill_in "Longitude", with: @poi.longitude
    fill_in "Name", with: @poi.name
    click_on "Update Poi"

    assert_text "Poi was successfully updated"
    click_on "Back"
  end

  test "destroying a Poi" do
    visit pois_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poi was successfully destroyed"
  end
end
