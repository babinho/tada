require 'test_helper'
require 'factory_girl'

class ItemTest < ActiveSupport::TestCase
  describe "valid operation" do
    let(:user) { FactoryGirl.create(:user) }
    let(:item) { user.items.create(title: "todo item 1" ) }
    it "works" do
      item.must_be_instance_of Item
    end
    it "must be valid" do
      item.user_id.must_equal user.id
      item.errors.count.must_equal 0
    end
    it "must check if completed" do
      item.must_respond_to :completed?
    end
    it "must be able to complete" do
      item.must_respond_to :complete!
    end
    it "must have a position attribute" do
      item.must_respond_to :position
    end
    describe "completion" do
      before do
        item.complete!
      end
      it "must be completed" do
        item.completed?.must_equal true
      end
    end
    it "should not be valid without a title" do
      user.items.build(title: nil).valid?.wont_equal true
    end
    it "should not be valid without a user" do
      FactoryGirl.build(:item).errors.wont_be_nil
    end
  end
end
