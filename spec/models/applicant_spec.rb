require 'spec_helper'

describe Applicant do
  describe "create Applicant" do
    context "valid attributes" do
      it "should be valid" do
        applicant = FactoryGirl.build(:applicant)

        applicant.should be_valid
      end

    end

    context "invalid attributes" do
      it "should not be valid" do
        applicant = FactoryGirl.build(:applicant, name: "")

        applicant.should_not be_valid
      end
    end
  end
end

describe Applicant do 
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:email)}
end