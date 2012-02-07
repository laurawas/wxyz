require 'spec_helper'

describe Wxyzer do
  it 'should create csv' do
    Wxyzer.create :email => 'ok@example.com'
    Wxyzer.all_to_csv
  end
end