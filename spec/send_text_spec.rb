require 'send_text'

describe SendText do
  subject(:sms) {described_class.new}

  xit 'sends a text message for with order confirmation and delivery time' do
    expect(sms.text_msg).to eq sms.customers
  end
end
