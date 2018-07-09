require 'test_helper'

class SortControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sort_index_url
    assert_response :success
  end

  test "should get simple_sort" do
    get sort_simple_sort_url
    assert_response :success
  end

  test "should get merge_sort" do
    get sort_merge_sort_url
    assert_response :success
  end

  test "should get bubble_sort" do
    get sort_bubble_sort_url
    assert_response :success
  end

end
