require 'rails_helper'

RSpec.describe Link, :type => :model do
  before do
    @link = FactoryGirl.build(:link)
  end

  it "is invalid without an original url" do
    @link.original = nil
    expect(@link).to_not be_valid
  end
end
