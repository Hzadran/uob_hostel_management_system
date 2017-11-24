require 'test_helper'

class HostelBlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hostel_block = hostel_blocks(:one)
  end

  test "should get index" do
    get hostel_blocks_url
    assert_response :success
  end

  test "should get new" do
    get new_hostel_block_url
    assert_response :success
  end

  test "should create hostel_block" do
    assert_difference('HostelBlock.count') do
      post hostel_blocks_url, params: { hostel_block: { block_no: @hostel_block.block_no, block_warden: @hostel_block.block_warden, location: @hostel_block.location } }
    end

    assert_redirected_to hostel_block_url(HostelBlock.last)
  end

  test "should show hostel_block" do
    get hostel_block_url(@hostel_block)
    assert_response :success
  end

  test "should get edit" do
    get edit_hostel_block_url(@hostel_block)
    assert_response :success
  end

  test "should update hostel_block" do
    patch hostel_block_url(@hostel_block), params: { hostel_block: { block_no: @hostel_block.block_no, block_warden: @hostel_block.block_warden, location: @hostel_block.location } }
    assert_redirected_to hostel_block_url(@hostel_block)
  end

  test "should destroy hostel_block" do
    assert_difference('HostelBlock.count', -1) do
      delete hostel_block_url(@hostel_block)
    end

    assert_redirected_to hostel_blocks_url
  end
end
