require "mobile_system_test_case"

class PostsTest < MobileSystemTestCase
  test "visiting the index" do
    visit new_article_path
    assert_selector "h1", text: "New Article"
  end
end
