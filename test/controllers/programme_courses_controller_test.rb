require "test_helper"

class ProgrammeCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programme_course = programme_courses(:one)
  end

  test "should get index" do
    get programme_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_programme_course_url
    assert_response :success
  end

  test "should create programme_course" do
    assert_difference('ProgrammeCourse.count') do
      post programme_courses_url, params: { programme_course: { CourseID: @programme_course.CourseID, ProgrammeID: @programme_course.ProgrammeID } }
    end

    assert_redirected_to programme_course_url(ProgrammeCourse.last)
  end

  test "should show programme_course" do
    get programme_course_url(@programme_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_programme_course_url(@programme_course)
    assert_response :success
  end

  test "should update programme_course" do
    patch programme_course_url(@programme_course), params: { programme_course: { CourseID: @programme_course.CourseID, ProgrammeID: @programme_course.ProgrammeID } }
    assert_redirected_to programme_course_url(@programme_course)
  end

  test "should destroy programme_course" do
    assert_difference('ProgrammeCourse.count', -1) do
      delete programme_course_url(@programme_course)
    end

    assert_redirected_to programme_courses_url
  end
end
