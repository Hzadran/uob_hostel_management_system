require 'test_helper'

class SPageControllerTest < ActionDispatch::IntegrationTest
  test "should get news" do
    get s_page_news_url
    assert_response :success
  end

end
