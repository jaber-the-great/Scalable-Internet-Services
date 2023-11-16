require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    # :one referes to the fixture in the comments.yml file
    mail = CommentsMailer.submitted comments(:one)
    assert_equal "New comment!", mail.subject
    assert_equal ["john-doe@gmail.com"], mail.to
    assert_equal ["from@example.com"], mail.from
    # assert_match "Hi", mail.body.encoded
  end

end
