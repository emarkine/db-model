require "spec_helper"

RSpec.describe Db::Model do
  it "has a version number" do
    expect(Db::Model::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
