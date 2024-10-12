require "test_helper"

class ArticleTest < ActiveSupport::TestCase
   test "should not create article" do
      @article = Article.new
      assert_not @article.save
   end

   test "should not save article" do
     @article = Article.new
     @article.title = "first title"
     @article.body = "test"
     assert_not @article.save
   end

   test "should save the article" do
     @article = Article.new
     @article.title = "first title"
     @article.body = "this is the first body"
     assert @article.save
   end

   test "should create the comment with the article" do 
     @comment = Comment.new
     @comment.comment = "hey this post is the good comment"
     @article = Article.new
     @article.title = "title for the comment"
     @article.body = "this the body with the comment"
     @article.comments.push(@comment)
     assert @article.save
     assert @article.comments.count > 0
   end
end
