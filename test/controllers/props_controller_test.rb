require 'test_helper'

class PropsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prop = props(:one)
  end

  test "should get index" do
    get props_url
    assert_response :success
  end

  test "should get new" do
    get new_prop_url
    assert_response :success
  end

  test "should create prop" do
    assert_difference('Prop.count') do
      post props_url, params: { prop: { name: @prop.name, owner: @prop.owner } }
    end

    assert_redirected_to prop_url(Prop.last)
  end

  test "should show prop" do
    get prop_url(@prop)
    assert_response :success
  end

  test "should get edit" do
    get edit_prop_url(@prop)
    assert_response :success
  end

  test "should update prop" do
    patch prop_url(@prop), params: { prop: { name: @prop.name, owner: @prop.owner } }
    assert_redirected_to prop_url(@prop)
  end

  test "should destroy prop" do
    assert_difference('Prop.count', -1) do
      delete prop_url(@prop)
    end

    assert_redirected_to props_url
  end
end
