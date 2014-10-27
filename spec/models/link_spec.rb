require 'rails_helper'

RSpec.describe Link, :type => :model do
  before do
    @link = FactoryGirl.build(:link)
  end

  it "is invalid without an original url" do
    @link.original = nil
    expect(@link).to_not be_valid
  end

  it "is invalid without a code" do
    @link.code = nil
    expect(@link).to_not be_valid
  end

  it "has unique codes" do
    link1 = FactoryGirl.create(:link)
    link2 = FactoryGirl.build(:link)

    link2.code = link1.code
    expect(link2).to_not be_valid
  end
end
