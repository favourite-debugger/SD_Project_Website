require "test_helper"

class GroupAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_assignment = group_assignments(:one)
  end

  test "should get index" do
    get group_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_group_assignment_url
    assert_response :success
  end

  test "should create group_assignment" do
    assert_difference('GroupAssignment.count') do
      post group_assignments_url, params: { group_assignment: { GroupYear: @group_assignment.GroupYear, StudentID: @group_assignment.StudentID, group_id: @group_assignment.group_id } }
    end

    assert_redirected_to group_assignment_url(GroupAssignment.last)
  end

  test "should show group_assignment" do
    get group_assignment_url(@group_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_assignment_url(@group_assignment)
    assert_response :success
  end

  test "should update group_assignment" do
    patch group_assignment_url(@group_assignment), params: { group_assignment: { GroupYear: @group_assignment.GroupYear, StudentID: @group_assignment.StudentID, group_id: @group_assignment.group_id } }
    assert_redirected_to group_assignment_url(@group_assignment)
  end

  test "should destroy group_assignment" do
    assert_difference('GroupAssignment.count', -1) do
      delete group_assignment_url(@group_assignment)
    end

    assert_redirected_to group_assignments_url
  end
end
