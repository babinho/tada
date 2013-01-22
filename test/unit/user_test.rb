require 'test_helper'

class UserTest < ActiveSupport::TestCase
  let(:user) { User.create!(email: 'test@mail.com',password: "secret") }
  it "works" do
    user.must_be_instance_of User
  end
  it "should be valid" do
    user.errors.count.must_equal 0
  end
  it "can have many items" do
    user.must_respond_to(:items)
  end
end
