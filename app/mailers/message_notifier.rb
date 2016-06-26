class MessageNotifier < ApplicationMailer
  def send_message(email, message)
    @message = message
    emails = [
      #ENV["sean_email"],
      ENV["jeff_email"]
    ]
    mail( :to => emails,
         from: email,
    :subject => "A new Fink message from #{email}" )
  end
end
