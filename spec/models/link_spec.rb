require 'rails_helper'

RSpec.describe Link, :type => :model do
  before do
    @link = FactoryGirl.build(:link)
  end

  it "is invalid without an original url" do
    @link.original = nil
    expect(@link).to_not be_valid
  end

  context "#generate" do
    it "returns a code that can be decoded" do
      @another_link = FactoryGirl.create(:link)
      code = @another_link.generate

      expect(Link.decode(code)).to eq(@another_link.id)
    end
  end
end
