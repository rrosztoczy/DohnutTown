require 'test_helper'

class DohnutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dohnut = dohnuts(:one)
  end

  test "should get index" do
    get dohnuts_url
    assert_response :success
  end

  test "should get new" do
    get new_dohnut_url
    assert_response :success
  end

  test "should create dohnut" do
    assert_difference('Dohnut.count') do
      post dohnuts_url, params: { dohnut: { flavor: @dohnut.flavor, size: @dohnut.size, sprinkes: @dohnut.sprinkes } }
    end

    assert_redirected_to dohnut_url(Dohnut.last)
  end

  test "should show dohnut" do
    get dohnut_url(@dohnut)
    assert_response :success
  end

  test "should get edit" do
    get edit_dohnut_url(@dohnut)
    assert_response :success
  end

  test "should update dohnut" do
    patch dohnut_url(@dohnut), params: { dohnut: { flavor: @dohnut.flavor, size: @dohnut.size, sprinkes: @dohnut.sprinkes } }
    assert_redirected_to dohnut_url(@dohnut)
  end

  test "should destroy dohnut" do
    assert_difference('Dohnut.count', -1) do
      delete dohnut_url(@dohnut)
    end

    assert_redirected_to dohnuts_url
  end
end
