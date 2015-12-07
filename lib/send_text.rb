require 'twilio-ruby'
require 'dotenv'
Dotenv.load

class SendText

  def initialize
    @account_sid = ENV['TWILIO_ACCOUNT_SID']
    @auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new(@account_sid, @auth_token)
  end

  def text_msg
    time = (Time.now + (60*60)).strftime("%H:%M")
    @client.account.messages.create(
      from: '+441457597062',
      to: ENV['TWILIO_MY_NUMBER'],
      body: "Thanks for your purchase! Your order will be delivered before #{time}.")

    "You will receive a text confirming your order."
  end
end
