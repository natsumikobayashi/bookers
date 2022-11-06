require "test_helper"

class CreateControllerTest < ActionDispatch::IntegrationTest
  test "should get books" do
    get create_books_url
    assert_response :success
  end
end
