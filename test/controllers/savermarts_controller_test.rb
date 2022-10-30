require "test_helper"

class SavermartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @savermart = savermarts(:one)
  end

  test "should get index" do
    get savermarts_url
    assert_response :success
  end

  test "should get new" do
    get new_savermart_url
    assert_response :success
  end

  test "should create savermart" do
    assert_difference('Savermart.count') do
      post savermarts_url, params: { savermart: {  } }
    end

    assert_redirected_to savermart_url(Savermart.last)
  end

  test "should show savermart" do
    get savermart_url(@savermart)
    assert_response :success
  end

  test "should get edit" do
    get edit_savermart_url(@savermart)
    assert_response :success
  end

  test "should update savermart" do
    patch savermart_url(@savermart), params: { savermart: {  } }
    assert_redirected_to savermart_url(@savermart)
  end

  test "should destroy savermart" do
    assert_difference('Savermart.count', -1) do
      delete savermart_url(@savermart)
    end

    assert_redirected_to savermarts_url
  end
end
