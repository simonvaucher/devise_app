require 'spec_helper'

describe Thing do
  it "has a valid factory" do
    FactoryGirl.create(:thing).should be_valid
  end

end
