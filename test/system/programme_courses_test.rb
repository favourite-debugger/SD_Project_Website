require "application_system_test_case"

class ProgrammeCoursesTest < ApplicationSystemTestCase
  setup do
    @programme_course = programme_courses(:one)
  end

  test "visiting the index" do
    visit programme_courses_url
    assert_selector "h1", text: "Programme Courses"
  end

  test "creating a Programme course" do
    visit programme_courses_url
    click_on "New Programme Course"

    fill_in "Courseid", with: @programme_course.CourseID
    fill_in "Programmeid", with: @programme_course.ProgrammeID
    click_on "Create Programme course"

    assert_text "Programme course was successfully created"
    click_on "Back"
  end

  test "updating a Programme course" do
    visit programme_courses_url
    click_on "Edit", match: :first

    fill_in "Courseid", with: @programme_course.CourseID
    fill_in "Programmeid", with: @programme_course.ProgrammeID
    click_on "Update Programme course"

    assert_text "Programme course was successfully updated"
    click_on "Back"
  end

  test "destroying a Programme course" do
    visit programme_courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Programme course was successfully destroyed"
  end
end
