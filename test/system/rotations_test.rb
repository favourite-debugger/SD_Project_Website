require "application_system_test_case"

class RotationsTest < ApplicationSystemTestCase
  setup do
    @rotation = rotations(:one)
  end

  test "visiting the index" do
    visit rotations_url
    assert_selector "h1", text: "Rotations"
  end

  test "creating a Rotation" do
    visit rotations_url
    click_on "New Rotation"

    fill_in "Enddate", with: @rotation.endDate
    fill_in "Programme", with: @rotation.programme_id
    fill_in "Startdate", with: @rotation.startDate
    click_on "Create Rotation"

    assert_text "Rotation was successfully created"
    click_on "Back"
  end

  test "updating a Rotation" do
    visit rotations_url
    click_on "Edit", match: :first

    fill_in "Enddate", with: @rotation.endDate
    fill_in "Programme", with: @rotation.programme_id
    fill_in "Startdate", with: @rotation.startDate
    click_on "Update Rotation"

    assert_text "Rotation was successfully updated"
    click_on "Back"
  end

  test "destroying a Rotation" do
    visit rotations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rotation was successfully destroyed"
  end
end
