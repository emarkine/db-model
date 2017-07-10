require 'spec_helper'

RSpec.describe Db::Model do
  it 'has a version number' do
    expect(Db::Model::VERSION).not_to be nil
  end

  it 'Return usage text' do
    text = Rake::Task['db:model:dump'].invoke
    expect(text).not_to be nil
  end

end
