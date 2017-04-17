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
end
