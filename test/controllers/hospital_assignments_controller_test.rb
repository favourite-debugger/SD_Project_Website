require "test_helper"

class HospitalAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hospital_assignment = hospital_assignments(:one)
  end

  test "should get index" do
    get hospital_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_hospital_assignment_url
    assert_response :success
  end

  test "should create hospital_assignment" do
    assert_difference('HospitalAssignment.count') do
      post hospital_assignments_url, params: { hospital_assignment: { block_id: @hospital_assignment.block_id, hospital_id: @hospital_assignment.hospital_id, user_id: @hospital_assignment.user_id } }
    end

    assert_redirected_to hospital_assignment_url(HospitalAssignment.last)
  end

  test "should show hospital_assignment" do
    get hospital_assignment_url(@hospital_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_hospital_assignment_url(@hospital_assignment)
    assert_response :success
  end

  test "should update hospital_assignment" do
    patch hospital_assignment_url(@hospital_assignment), params: { hospital_assignment: { block_id: @hospital_assignment.block_id, hospital_id: @hospital_assignment.hospital_id, user_id: @hospital_assignment.user_id } }
    assert_redirected_to hospital_assignment_url(@hospital_assignment)
  end

  test "should destroy hospital_assignment" do
    assert_difference('HospitalAssignment.count', -1) do
      delete hospital_assignment_url(@hospital_assignment)
    end

    assert_redirected_to hospital_assignments_url
  end
end
