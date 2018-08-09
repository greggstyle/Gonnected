require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

    # previous test omitted

    test "POST create" do
      post create_message_url, params: {
        message: {
          name: 'cornholio',
          email: 'cornholio@example.org',
          body: 'hai'
        }
      }

      assert_redirected_to new_message_url

      follow_redirect!

      assert_match /Message received, thanks!/, response.body
    end
  end
