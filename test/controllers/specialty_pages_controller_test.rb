require "test_helper"

class SpecialtyPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specialty_page = specialty_pages(:one)
  end

  test "should get index" do
    get specialty_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_specialty_page_url
    assert_response :success
  end

  test "should create specialty_page" do
    assert_difference('SpecialtyPage.count') do
      post specialty_pages_url, params: { specialty_page: { specialty_ID: @specialty_page.specialty_ID, specialty_name: @specialty_page.specialty_name } }
    end

    assert_redirected_to specialty_page_url(SpecialtyPage.last)
  end

  test "should show specialty_page" do
    get specialty_page_url(@specialty_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_specialty_page_url(@specialty_page)
    assert_response :success
  end

  test "should update specialty_page" do
    patch specialty_page_url(@specialty_page), params: { specialty_page: { specialty_ID: @specialty_page.specialty_ID, specialty_name: @specialty_page.specialty_name } }
    assert_redirected_to specialty_page_url(@specialty_page)
  end

  test "should destroy specialty_page" do
    assert_difference('SpecialtyPage.count', -1) do
      delete specialty_page_url(@specialty_page)
    end

    assert_redirected_to specialty_pages_url
  end
end
