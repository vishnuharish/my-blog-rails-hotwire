require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get show" do
    @article = Article.first
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    @article = Article.first
    get edit_article_url(@article)
    assert_response :success
  end
end
