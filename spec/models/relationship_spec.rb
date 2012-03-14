require 'spec_helper'

describe Relationship do
  
  let(:follower) { FactoryGirl.create(:user) }
  let(:followed) { FactoryGirl.create(:user) }
  let(:relationship) do
<<<<<<< HEAD
  	follower.relationships.build(followed_id: followed.id)
=======
    follower.relationships.build(followed_id: followed.id)
>>>>>>> following-users
  end

  subject { relationship }

  it { should be_valid }

  describe "follower methods" do
  	before { relationship.save }

  	it { should respond_to(:follower) }
  	it { should respond_to(:followed) }
<<<<<<< HEAD
  	its(:follower) { should == follower}
=======
  	its(:follower) { should == follower }
>>>>>>> following-users
  	its(:followed) { should == followed }
  end

  describe "when followed id is not present" do
  	before { relationship.followed_id = nil }
  	it { should_not be_valid }
  end

  describe "when follower id is not present" do
  	before { relationship.follower_id = nil }
  	it { should_not be_valid }
  end
end
