require "application_system_test_case"

class BlackFridaysTest < ApplicationSystemTestCase
  setup do
    @black_friday = black_fridays(:one)
  end

  test "visiting the index" do
    visit black_fridays_url
    assert_selector "h1", text: "Black Fridays"
  end

  test "creating a Black friday" do
    visit black_fridays_url
    click_on "New Black Friday"

    fill_in "Age", with: @black_friday.age
    fill_in "City Category", with: @black_friday.city_category
    fill_in "Gender", with: @black_friday.gender
    fill_in "Marital Status", with: @black_friday.marital_status
    fill_in "Occupation", with: @black_friday.occupation
    fill_in "Product Category 1", with: @black_friday.product_category_1
    fill_in "Product Category 2", with: @black_friday.product_category_2
    fill_in "Product Category 3", with: @black_friday.product_category_3
    fill_in "Product", with: @black_friday.product_id
    fill_in "Purchase", with: @black_friday.purchase
    fill_in "Stay In Current City Years", with: @black_friday.stay_in_current_city_years
    fill_in "User", with: @black_friday.user_id
    click_on "Create Black friday"

    assert_text "Black friday was successfully created"
    click_on "Back"
  end

  test "updating a Black friday" do
    visit black_fridays_url
    click_on "Edit", match: :first

    fill_in "Age", with: @black_friday.age
    fill_in "City Category", with: @black_friday.city_category
    fill_in "Gender", with: @black_friday.gender
    fill_in "Marital Status", with: @black_friday.marital_status
    fill_in "Occupation", with: @black_friday.occupation
    fill_in "Product Category 1", with: @black_friday.product_category_1
    fill_in "Product Category 2", with: @black_friday.product_category_2
    fill_in "Product Category 3", with: @black_friday.product_category_3
    fill_in "Product", with: @black_friday.product_id
    fill_in "Purchase", with: @black_friday.purchase
    fill_in "Stay In Current City Years", with: @black_friday.stay_in_current_city_years
    fill_in "User", with: @black_friday.user_id
    click_on "Update Black friday"

    assert_text "Black friday was successfully updated"
    click_on "Back"
  end

  test "destroying a Black friday" do
    visit black_fridays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Black friday was successfully destroyed"
  end
end
