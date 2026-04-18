# frozen_string_literal: true

require 'spec_helper'

describe KillBillClient do
  it 'is able to parse a url with http' do
    described_class.url = 'http://example.com:8080'
    expect(KillBillClient::API.base_uri.scheme).to eq('http')
    expect(KillBillClient::API.base_uri.host).to eq('example.com')
    expect(KillBillClient::API.base_uri.port).to eq(8080)
  end

  it 'is able to parse a url without http' do
    described_class.url = 'example.com:8080'
    expect(KillBillClient::API.base_uri.scheme).to eq('http')
    expect(KillBillClient::API.base_uri.host).to eq('example.com')
    expect(KillBillClient::API.base_uri.port).to eq(8080)
  end
end
