require "test_helper"

class WelcomeMailerTest < ActionMailer::TestCase
  test "send_greeting" do
    mail = WelcomeMailer.send_greeting
    assert_equal "Send greeting", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
