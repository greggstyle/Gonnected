require 'test_helper'

class MessageTest < ActiveSupport::TestCase

 test 'should be valid when all attributes are set' do
    attrs = {
      name: 'stephen',
      email: 'stephen@example.org',
      phone_number: '0600112233'
      body: 'kthnxbai'
    }

    msg = Message.new attrs
    assert msg.valid?, 'should be valid'
  end
end
