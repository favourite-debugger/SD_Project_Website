require "test_helper"

class CourseSpecialtiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_specialty = course_specialties(:one)
  end

  test "should get index" do
    get course_specialties_url
    assert_response :success
  end

  test "should get new" do
    get new_course_specialty_url
    assert_response :success
  end

  test "should create course_specialty" do
    assert_difference('CourseSpecialty.count') do
      post course_specialties_url, params: { course_specialty: { Course_id: @course_specialty.Course_id, Specialty_id: @course_specialty.Specialty_id } }
    end

    assert_redirected_to course_specialty_url(CourseSpecialty.last)
  end

  test "should show course_specialty" do
    get course_specialty_url(@course_specialty)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_specialty_url(@course_specialty)
    assert_response :success
  end

  test "should update course_specialty" do
    patch course_specialty_url(@course_specialty), params: { course_specialty: { Course_id: @course_specialty.Course_id, Specialty_id: @course_specialty.Specialty_id } }
    assert_redirected_to course_specialty_url(@course_specialty)
  end

  test "should destroy course_specialty" do
    assert_difference('CourseSpecialty.count', -1) do
      delete course_specialty_url(@course_specialty)
    end

    assert_redirected_to course_specialties_url
  end
end
