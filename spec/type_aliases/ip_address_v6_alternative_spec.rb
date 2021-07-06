require 'spec_helper'

describe 'Stdlib::IP::Address::V6::Alternative' do
  describe 'accepts ipv6 addresses in alternative format' do
    [
      '0:0:0:0:0:0:13.1.68.3',
      '0:0:0:0:0:FFFF:129.144.52.38',
      '0:0:0:0:0:FFFF:129.144.52.38/60',
    ].each do |value|
      describe value.inspect do
        it { is_expected.to allow_value(value) }
      end
    end
  end

  describe 'rejects other values' do
    [
      'nope',
      '127.0.0.1',
    ].each do |value|
      describe value.inspect do
        it { is_expected.not_to allow_value(value) }
      end
    end
  end
end
