require "spec_helper"

RSpec.describe Petitest::PowerAssert do
  it "has a version number" do
    expect(Petitest::PowerAssert::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
