require "application_system_test_case"

class SpecialtyPagesTest < ApplicationSystemTestCase
  setup do
    @specialty_page = specialty_pages(:one)
  end

  test "visiting the index" do
    visit specialty_pages_url
    assert_selector "h1", text: "Specialty Pages"
  end

  test "creating a Specialty page" do
    visit specialty_pages_url
    click_on "New Specialty Page"

    fill_in "Specialty id", with: @specialty_page.specialty_ID
    fill_in "Specialty name", with: @specialty_page.specialty_name
    click_on "Create Specialty page"

    assert_text "Specialty page was successfully created"
    click_on "Back"
  end

  test "updating a Specialty page" do
    visit specialty_pages_url
    click_on "Edit", match: :first

    fill_in "Specialty id", with: @specialty_page.specialty_ID
    fill_in "Specialty name", with: @specialty_page.specialty_name
    click_on "Update Specialty page"

    assert_text "Specialty page was successfully updated"
    click_on "Back"
  end

  test "destroying a Specialty page" do
    visit specialty_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specialty page was successfully destroyed"
  end
end
