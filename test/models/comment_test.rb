require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "comments cannot be created without the article" do
    @comment = Comment.new
    @comment.comment = "Hello comment"
    assert_not @comment.save
  end
end
