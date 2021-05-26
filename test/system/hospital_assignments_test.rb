require "application_system_test_case"

class HospitalAssignmentsTest < ApplicationSystemTestCase
  setup do
    @hospital_assignment = hospital_assignments(:one)
  end

  test "visiting the index" do
    visit hospital_assignments_url
    assert_selector "h1", text: "Hospital Assignments"
  end

  test "creating a Hospital assignment" do
    visit hospital_assignments_url
    click_on "New Hospital Assignment"

    fill_in "Block", with: @hospital_assignment.block_id
    fill_in "Hospital", with: @hospital_assignment.hospital_id
    fill_in "User", with: @hospital_assignment.user_id
    click_on "Create Hospital assignment"

    assert_text "Hospital assignment was successfully created"
    click_on "Back"
  end

  test "updating a Hospital assignment" do
    visit hospital_assignments_url
    click_on "Edit", match: :first

    fill_in "Block", with: @hospital_assignment.block_id
    fill_in "Hospital", with: @hospital_assignment.hospital_id
    fill_in "User", with: @hospital_assignment.user_id
    click_on "Update Hospital assignment"

    assert_text "Hospital assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Hospital assignment" do
    visit hospital_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hospital assignment was successfully destroyed"
  end
end
