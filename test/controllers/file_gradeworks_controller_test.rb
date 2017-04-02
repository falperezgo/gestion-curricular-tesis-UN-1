require 'test_helper'

class FileGradeworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_gradework = file_gradeworks(:one)
  end

  test "should get index" do
    get file_gradeworks_url
    assert_response :success
  end

  test "should get new" do
    get new_file_gradework_url
    assert_response :success
  end

  test "should create file_gradework" do
    assert_difference('FileGradework.count') do
      post file_gradeworks_url, params: { file_gradework: { description: @file_gradework.description, gradework: @file_gradework.gradework, name: @file_gradework.name, path: @file_gradework.path, size: @file_gradework.size } }
    end

    assert_redirected_to file_gradework_url(FileGradework.last)
  end

  test "should show file_gradework" do
    get file_gradework_url(@file_gradework)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_gradework_url(@file_gradework)
    assert_response :success
  end

  test "should update file_gradework" do
    patch file_gradework_url(@file_gradework), params: { file_gradework: { description: @file_gradework.description, gradework: @file_gradework.gradework, name: @file_gradework.name, path: @file_gradework.path, size: @file_gradework.size } }
    assert_redirected_to file_gradework_url(@file_gradework)
  end

  test "should destroy file_gradework" do
    assert_difference('FileGradework.count', -1) do
      delete file_gradework_url(@file_gradework)
    end

    assert_redirected_to file_gradeworks_url
  end
end
