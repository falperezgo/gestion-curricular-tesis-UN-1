require 'test_helper'

class FileGradeworkTest < ActiveSupport::TestCase
  setup do
    @file_gradework = file_gradeworks(:one)
  end

  test "name should not be null" do
    #filegradeworkname = FileGradework.new
    filegradeworkname = @file_gradework
    assert filegradeworkname.name != nil, "name is null"
  end

  test "description should not be null" do
    #filegradeworkpath = FileGradework.new
    filegradeworkdesc = @file_gradework
    assert filegradeworkdesc.description != nil, "description is null"
  end

  test "path should not be null" do
    #filegradeworkpath = FileGradework.new
    filegradeworkpath = @file_gradework
    assert filegradeworkpath.path != nil, "path is null"
  end

  test "unique path" do
    @file_gradework = FileGradework.new(:path => file_gradeworks(:thr).path)
    assert !@file_gradework.save
    assert_equal ["path has already been taken"], @file_gradework.errors[:path]
  end

  test "name should be a String" do
      assert_kind_of String, @file_gradework.name
  end

  test "path should be a String" do
      assert_kind_of String, @file_gradework.path
  end

  test "size should be a Integer" do
      assert_kind_of Integer, @file_gradework.size
  end

  test "gradework id should be a Integer" do
      assert_kind_of Integer, @file_gradework.gradework_id
  end

end
