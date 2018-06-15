require "test_helper"

class BlogFlowTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get "/"
    assert_select "h1", "Hello, Rails!"
  end

  test "can create an article" do
    get "/articles/new"
    assert_response :success

    post "/articles",
      params: { article: { title: "can create", text: "article successfully" } }

    assert_response :redirect
    follow_redirect!
    # byebug
    assert_response :success
    assert_select "p", "Title:\n  can create"
  end
end
