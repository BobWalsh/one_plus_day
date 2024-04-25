require "test_helper"

class YitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yitem = yitems(:one)
  end

  test "should get index" do
    get yitems_url
    assert_response :success
  end

  test "should get new" do
    get new_yitem_url
    assert_response :success
  end

  test "should create yitem" do
    assert_difference("Yitem.count") do
      post yitems_url, params: {yitem: {day_id: @yitem.day_id, name: @yitem.name, url: @yitem.url}}
    end

    assert_redirected_to yitem_url(Yitem.last)
  end

  test "should show yitem" do
    get yitem_url(@yitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_yitem_url(@yitem)
    assert_response :success
  end

  test "should update yitem" do
    patch yitem_url(@yitem), params: {yitem: {day_id: @yitem.day_id, name: @yitem.name, url: @yitem.url}}
    assert_redirected_to yitem_url(@yitem)
  end

  test "should destroy yitem" do
    assert_difference("Yitem.count", -1) do
      delete yitem_url(@yitem)
    end

    assert_redirected_to yitems_url
  end
end
