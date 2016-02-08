class TwilioController < ApplicationController
  def new
  end

  def send_sms
 	  number = params[:number]

    twilio_sid = "AC647abecd4fada906e947ba975f0c5dff"
    twilio_token = "ac8d95ca5819867d38c8b8e0e3bd2ddc"
    twilio_phone_number = "+12513330126"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+001#{number}",
      :to => number,
      :body => "This is an message. It gets sent to #{number}"
    )
  end


  def destroy
  end
end
