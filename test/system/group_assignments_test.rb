require "application_system_test_case"

class GroupAssignmentsTest < ApplicationSystemTestCase
  setup do
    @group_assignment = group_assignments(:one)
  end

  test "visiting the index" do
    visit group_assignments_url
    assert_selector "h1", text: "Group Assignments"
  end

  test "creating a Group assignment" do
    visit group_assignments_url
    click_on "New Group Assignment"

    fill_in "Groupyear", with: @group_assignment.GroupYear
    fill_in "Studentid", with: @group_assignment.StudentID
    fill_in "Group", with: @group_assignment.group_id
    click_on "Create Group assignment"

    assert_text "Group assignment was successfully created"
    click_on "Back"
  end

  test "updating a Group assignment" do
    visit group_assignments_url
    click_on "Edit", match: :first

    fill_in "Groupyear", with: @group_assignment.GroupYear
    fill_in "Studentid", with: @group_assignment.StudentID
    fill_in "Group", with: @group_assignment.group_id
    click_on "Update Group assignment"

    assert_text "Group assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Group assignment" do
    visit group_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group assignment was successfully destroyed"
  end
end
