require 'test_helper'

class BlackFridaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @black_friday = black_fridays(:one)
  end

  test "should get index" do
    get black_fridays_url
    assert_response :success
  end

  test "should get new" do
    get new_black_friday_url
    assert_response :success
  end

  test "should create black_friday" do
    assert_difference('BlackFriday.count') do
      post black_fridays_url, params: { black_friday: { age: @black_friday.age, city_category: @black_friday.city_category, gender: @black_friday.gender, marital_status: @black_friday.marital_status, occupation: @black_friday.occupation, product_category_1: @black_friday.product_category_1, product_category_2: @black_friday.product_category_2, product_category_3: @black_friday.product_category_3, product_id: @black_friday.product_id, purchase: @black_friday.purchase, stay_in_current_city_years: @black_friday.stay_in_current_city_years, user_id: @black_friday.user_id } }
    end

    assert_redirected_to black_friday_url(BlackFriday.last)
  end

  test "should show black_friday" do
    get black_friday_url(@black_friday)
    assert_response :success
  end

  test "should get edit" do
    get edit_black_friday_url(@black_friday)
    assert_response :success
  end

  test "should update black_friday" do
    patch black_friday_url(@black_friday), params: { black_friday: { age: @black_friday.age, city_category: @black_friday.city_category, gender: @black_friday.gender, marital_status: @black_friday.marital_status, occupation: @black_friday.occupation, product_category_1: @black_friday.product_category_1, product_category_2: @black_friday.product_category_2, product_category_3: @black_friday.product_category_3, product_id: @black_friday.product_id, purchase: @black_friday.purchase, stay_in_current_city_years: @black_friday.stay_in_current_city_years, user_id: @black_friday.user_id } }
    assert_redirected_to black_friday_url(@black_friday)
  end

  test "should destroy black_friday" do
    assert_difference('BlackFriday.count', -1) do
      delete black_friday_url(@black_friday)
    end

    assert_redirected_to black_fridays_url
  end
end
